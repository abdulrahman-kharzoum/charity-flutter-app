import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/add_request_cubit/add_request_cubit.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:intl/intl.dart' as intl_lib;
import 'dart:ui' as ui; // Added for TextDirection

import 'package:charity/features/Services/instant_aids/repo/instant_aids_repository.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/shared/local_network.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/core/server/dio_settings.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/shared/dialogs/loading_dialog.dart';
import 'package:charity/core/shared/dialogs/error_dialog.dart';
import 'package:charity/features/auth/models/user_model.dart';

import '../../features/Services/instant_aids/cubits/create_instant_aid_cubit/create_instant_aid_cubit.dart';
import '../../features/Services/instant_aids/models/create_instant_aid_request_body_model.dart';
import '../../features/Services/instant_aids/models/instant_aid_api_full_response.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final ApiService apiService = ApiService(dio: dio());

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddRequestCubit(),
        ),
        BlocProvider(
          create: (context) => CreateInstantAidCubit(
            InstantAidsRepository(apiService),
          ),
        ),
      ],
      child: BlocConsumer<CreateInstantAidCubit, CreateInstantAidState>(
        listener: (context, state) {
          if (state.status == SubmissionStatus.loading) {
            showLoadingDialog(context);
          } else {
            Navigator.of(context).pop();
          }

          if (state.status == SubmissionStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  l10n.requestSuccessMessage,
                    style: TextStyle(fontFamily: 'Lexend', color: AppColors.white)
                ),
                backgroundColor: AppColors.requestStatusAccepted,
              ),
            );
            Navigator.of(context).pop(true);
          } else if (state.status == SubmissionStatus.error) {
            showErrorDialog(context, state.failure?.message ?? l10n.requestFailureMessageGeneric);
          }
        },
        builder: (context, createInstantAidState) {
          final addRequestCubit = context.read<AddRequestCubit>();

          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              backgroundColor: AppColors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                    l10n.localeName == 'ar' ? Icons.arrow_forward_ios_rounded : Icons.arrow_back_ios_new_rounded,
                    color: AppColors.gray700,
                    size: 24
                ),
                onPressed: () => Navigator.of(context).pop(true),
              ),
              title: Text(
                l10n.addRequestScreenTitle,
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.gray900,
                ),
              ),
              centerTitle: true,
              actions: const [
                SizedBox(width: 48),
              ],
            ),
            body: Directionality(
              textDirection: l10n.localeName == 'ar' ? ui.TextDirection.rtl : ui.TextDirection.ltr,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 80.0),
                child: Form(
                  key: addRequestCubit.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAmountField(context, addRequestCubit, l10n),
                      const SizedBox(height: 24),
                      _buildTextField(
                        context: context,
                        controller: addRequestCubit.reasonController,
                        label: l10n.reasonLabel,
                        hint: l10n.reasonHint,
                        maxLines: 4,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return l10n.reasonValidationError;
                          }
                          if (value.trim().length < 10) {
                            return l10n.reasonTooShortError(10);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      _buildTextField(
                        context: context,
                        controller: addRequestCubit.notesController,
                        label: l10n.notesLabel,
                        hint: l10n.notesHint,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 24),
                      _buildUrgencyLevelField(context, addRequestCubit, l10n),
                      const SizedBox(height: 24),
                      _buildDateField(context, addRequestCubit, l10n),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: MediaQuery.of(context).padding.bottom + 16.0,
                  top: 8.0
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary500,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 5,
                  shadowColor: AppColors.primary200.withOpacity(0.5),
                ).copyWith(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return AppColors.primary600;
                      }
                      return null;
                    },
                  ),
                ),
                onPressed: () async {
                  if (addRequestCubit.validateForm()) {
                    final createInstantAidCubit = context.read<CreateInstantAidCubit>();

                    if (addRequestCubit.selectedDate == null) {
                      final bool? continueWithoutDate = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(l10n.warning),
                          content: Text(l10n.receivedAtEmptyWarning),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text(l10n.cancel),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: Text(l10n.continueText),
                            ),
                          ],
                        ),
                      );
                      if (continueWithoutDate != true) {
                        return;
                      }
                    }

                    double amount = double.tryParse(addRequestCubit.amountController.text) ?? 0;
                    if (addRequestCubit.selectedCurrencyUnit == "million") {
                      amount *= 1000;
                    }

                    final UserModel? user = CacheNetwork.getUser();
                    final int? beneficiaryId = user?.id;

                    if (beneficiaryId == null) {
                      showErrorDialog(context, l10n.requestFailureMessageGeneric);
                      return;
                    }

                    String? receivedAt;
                    if (addRequestCubit.selectedDate != null) {
                      receivedAt = intl_lib.DateFormat("yyyy-MM-ddTHH:mm:ss.000000'Z'").format(addRequestCubit.selectedDate!.toUtc());
                    } else {
                      receivedAt = null; // Set to null if no date is selected
                    }

                    final body = CreateInstantAidRequestBodyModel(
                      amount: amount.toInt(),
                      reason: addRequestCubit.reasonController.text.trim(),
                      beneficiary_id: beneficiaryId,
                      urgency_level: addRequestCubit.selectedUrgencyLevel,
                      // Only include received_at if it's not null or empty
                      received_at: (receivedAt != null && receivedAt.isNotEmpty)
                          ? receivedAt
                          : null,
                    );

                    createInstantAidCubit.createInstantAid(body: body);
                  }
                },
                child: Text(
                  l10n.submitRequestButton,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAmountField(BuildContext context, AddRequestCubit cubit, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.amountLabel,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.gray700, fontFamily: 'Lexend'),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: cubit.amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: TextStyle(fontSize: 16, color: AppColors.gray900, fontFamily: 'Lexend'),
                decoration: InputDecoration(
                  hintText: l10n.amountHint,
                  hintStyle: TextStyle(color: AppColors.gray400, fontFamily: 'Lexend', fontSize: 15),
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.gray200, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.gray200, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.primary500, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.requestStatusRejected.withOpacity(0.7), width: 1.5),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.requestStatusRejected, width: 2.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return l10n.amountValidationErrorRequired;
                  }
                  final number = double.tryParse(value);
                  if (number == null) {
                    return l10n.amountValidationErrorInvalid;
                  }
                  if (number <= 0) {
                    return l10n.amountValidationErrorPositive;
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 58,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: BlocBuilder<AddRequestCubit, AddRequestState>(
                buildWhen: (previous, current) => current is AddRequestCurrencyUnitChanged || current is AddRequestInitial,
                builder: (context, state) {
                  String currentUnit = cubit.selectedCurrencyUnit;
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _CurrencyUnitChip(
                        label: l10n.currencyUnitThousand,
                        value: "thousand",
                        groupValue: currentUnit,
                        onChanged: (val) => cubit.changeCurrencyUnit(val!),
                      ),
                      _CurrencyUnitChip(
                        label: l10n.currencyUnitMillion,
                        value: "million",
                        groupValue: currentUnit,
                        onChanged: (val) => cubit.changeCurrencyUnit(val!),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTextField({
    required BuildContext context,
    required TextEditingController controller,
    required String label,
    required String hint,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.gray700, fontFamily: 'Lexend'),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          minLines: maxLines,
          style: TextStyle(fontSize: 16, color: AppColors.gray900, fontFamily: 'Lexend'),
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.gray400, fontFamily: 'Lexend', fontSize: 15),
            filled: true,
            fillColor: AppColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.gray200, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.gray200, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.primary500, width: 2.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.requestStatusRejected.withOpacity(0.7), width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.requestStatusRejected, width: 2.0),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          ),
          validator: validator,
        ),
      ],
    );
  }

  Widget _buildUrgencyLevelField(BuildContext context, AddRequestCubit cubit, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.urgencyLevelLabel,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.gray700, fontFamily: 'Lexend'),
        ),
        const SizedBox(height: 8),
        Container(
          height: 58,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.primary50,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: BlocBuilder<AddRequestCubit, AddRequestState>(
            buildWhen: (previous, current) => current is AddRequestUrgencyLevelChanged || current is AddRequestInitial,
            builder: (context, state) {
              String currentUrgency = cubit.selectedUrgencyLevel;
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _UrgencyLevelChip(
                    label: l10n.urgencyLevelLow,
                    value: "low",
                    groupValue: currentUrgency,
                    onChanged: (val) => cubit.changeUrgencyLevel(val!),
                  ),
                  _UrgencyLevelChip(
                    label: l10n.urgencyLevelMedium,
                    value: "medium",
                    groupValue: currentUrgency,
                    onChanged: (val) => cubit.changeUrgencyLevel(val!),
                  ),
                  _UrgencyLevelChip(
                    label: l10n.urgencyLevelHigh,
                    value: "high",
                    groupValue: currentUrgency,
                    onChanged: (val) => cubit.changeUrgencyLevel(val!),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(BuildContext context, AddRequestCubit cubit, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.receivedAtLabel,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.gray700, fontFamily: 'Lexend'),
        ),
        const SizedBox(height: 8),
        BlocBuilder<AddRequestCubit, AddRequestState>(
          buildWhen: (previous, current) => current is AddRequestDateChanged || current is AddRequestInitial,
          builder: (context, state) {
            final selectedDate = cubit.selectedDate;
            final dateText = selectedDate != null
                ? intl_lib.DateFormat('dd/MM/yyyy HH:mm').format(selectedDate)
                : l10n.selectDateHint;

            return Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate ?? DateTime.now(),
                        firstDate: DateTime.now(), // Prevent picking dates before today
                        lastDate: DateTime(2101),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: AppColors.primary500,
                                onPrimary: AppColors.white,
                                onSurface: AppColors.gray900,
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  foregroundColor: AppColors.primary500,
                                  textStyle: TextStyle(fontFamily: 'Lexend'),
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (pickedDate != null) {
                        final TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: selectedDate != null
                              ? TimeOfDay(hour: selectedDate.hour, minute: selectedDate.minute)
                              : TimeOfDay.now(),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primary500,
                                  onPrimary: AppColors.white,
                                  onSurface: AppColors.gray900,
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    foregroundColor: AppColors.primary500,
                                    textStyle: TextStyle(fontFamily: 'Lexend'),
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (pickedTime != null) {
                          final DateTime now = DateTime.now();
                          final DateTime fullPickedDate = DateTime(
                            pickedDate.year,
                            pickedDate.month,
                            pickedDate.day,
                            pickedTime.hour,
                            pickedTime.minute,
                          );

                          if (fullPickedDate.isBefore(now)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  l10n.dateInPastError,
                                  style: TextStyle(fontFamily: 'Lexend', color: AppColors.white),
                                ),
                                backgroundColor: AppColors.requestStatusRejected,
                              ),
                            );
                          } else {
                            cubit.changeDate(fullPickedDate);
                          }
                        }
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: AppColors.gray200, width: 1.5),
                      ),
                      child: Text(
                        dateText,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lexend',
                          color: selectedDate != null ? AppColors.gray900 : AppColors.gray400,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.calendar_today, color: AppColors.gray500),
                  onPressed: () { /* This will trigger the onTap of GestureDetector */ },
                ),
                if (selectedDate != null)
                  IconButton(onPressed: (){
                    cubit.changeDate(null);
                  }, icon: Icon(Icons.delete_forever, color: AppColors.darkRed))
              ],
            );
          },
        ),
      ],
    );
  }
}

class _CurrencyUnitChip extends StatelessWidget {
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const _CurrencyUnitChip({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(value),
        borderRadius: BorderRadius.circular(8.0),
        splashColor: AppColors.primary100.withOpacity(0.5),
        highlightColor: AppColors.primary100.withOpacity(0.3),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isSelected
                ? [
              BoxShadow(
                color: AppColors.gray600.withOpacity(0.15),
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]
                : [],
          ),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected ? AppColors.primary600 : AppColors.gray500,
            ),
          ),
        ),
      ),
    );
  }
}

class _UrgencyLevelChip extends StatelessWidget {
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const _UrgencyLevelChip({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(value),
        borderRadius: BorderRadius.circular(8.0),
        splashColor: AppColors.primary100.withOpacity(0.5),
        highlightColor: AppColors.primary100.withOpacity(0.3),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isSelected
                ? [
              BoxShadow(
                color: AppColors.gray600.withOpacity(0.15),
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]
                : [],
          ),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected ? AppColors.primary600 : AppColors.gray500,
            ),
          ),
        ),
      ),
    );
  }
}