// lib/screens/add_request/add_request_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/add_request_cubit/add_request_cubit.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/models/request_model.dart'; // Import RequestModel
import 'package:charity/theme/color.dart';

class AddRequestScreen extends StatelessWidget {
  const AddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => AddRequestCubit(),
      child: BlocConsumer<AddRequestCubit, AddRequestState>(
        listener: (context, state) {
          if (state is AddRequestSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    state.message.isNotEmpty ? state.message : l10n.requestSuccessMessage,
                    style: TextStyle(fontFamily: 'Lexend', color: AppColors.white)
                ),
                backgroundColor: AppColors.requestStatusAccepted,
              ),
            );
            // Pop with the createdRequest object
            Navigator.of(context).pop(state.createdRequest); // <--- MODIFIED HERE
          } else if (state is AddRequestFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage, style: TextStyle(fontFamily: 'Lexend', color: AppColors.white)),
                backgroundColor: AppColors.requestStatusRejected,
              ),
            );
          }
        },
        builder: (context, state) {
          // ... rest of your builder code remains the same
          final cubit = context.read<AddRequestCubit>();
          bool isLoading = state is AddRequestLoading;

          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              backgroundColor: AppColors.white,
              elevation: 0,
              // For RTL, back arrow should point to the right.
              // This can be handled by `Directionality` or explicitly.
              // Flutter's default `BackButton` handles this automatically based on Directionality.
              // Using leading: null, will often show the default back button if appropriate.
              // If you want full control:
              leading: IconButton(
                // Use `Icons.arrow_back_ios_new` for LTR and `Icons.arrow_forward_ios_rounded` for RTL
                icon: Icon(
                    l10n.localeName == 'ar' ? Icons.arrow_forward_ios_rounded : Icons.arrow_back_ios_new_rounded,
                    color: AppColors.gray700,
                    size: 24
                ),
                onPressed: () => Navigator.of(context).pop(),
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
              actions: [
                SizedBox(width: 48), // To balance the leading icon if it's 48px wide
              ],
            ),
            body: AbsorbPointer(
              absorbing: isLoading,
              child: Stack(
                children: [
                  Directionality(
                    textDirection: l10n.localeName == 'ar' ? TextDirection.rtl : TextDirection.ltr,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 80.0), // Added padding for FAB
                      child: Form(
                        key: cubit.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildAmountField(context, cubit, l10n),
                            const SizedBox(height: 24),
                            _buildTextField(
                              context: context,
                              controller: cubit.reasonController,
                              label: l10n.reasonLabel,
                              hint: l10n.reasonHint,
                              maxLines: 4,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return l10n.reasonValidationError;
                                }
                                if (value.trim().length < 10) { // Example: min length
                                  return l10n.reasonTooShortError(10);
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),
                            _buildTextField(
                              context: context,
                              controller: cubit.descriptionController,
                              label: l10n.descriptionLabel,
                              hint: l10n.descriptionHint,
                              maxLines: 3,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return l10n.descriptionValidationError;
                                }
                                if (value.trim().length < 10) { // Example: min length
                                  return l10n.descriptionTooShortError(10);
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),
                            _buildTextField(
                              context: context,
                              controller: cubit.notesController,
                              label: l10n.notesLabel,
                              hint: l10n.notesHint,
                              maxLines: 3,
                            ),
                            const SizedBox(height: 40), // Space for content before button
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (isLoading)
                    Container(
                      color: AppColors.white.withOpacity(0.5),
                      child: Center(child: CircularProgressIndicator(color: AppColors.primaryColor)),
                    ),
                ],
              ),
            ),
            // Ensure bottomNavigationBar is outside the SingleChildScrollView
            bottomNavigationBar: isLoading
                ? null // Hide button when loading
                : Padding(
              padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: MediaQuery.of(context).padding.bottom + 16.0, // Consider safe area
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
                onPressed: () {
                  cubit.submitRequest();
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

  // ... _buildAmountField and _buildTextField methods remain the same
  // (ensure they use l10n for labels/hints if not already)

  Widget _buildAmountField(BuildContext context, AddRequestCubit cubit, AppLocalizations l10n) { // Added l10n
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.amountLabel, // Use l10n
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.gray700, fontFamily: 'Lexend'),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the top
          children: [
            Expanded(
              child: TextFormField(
                controller: cubit.amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: TextStyle(fontSize: 16, color: AppColors.gray900, fontFamily: 'Lexend'),
                decoration: InputDecoration(
                  hintText: l10n.amountHint, // Use l10n
                  hintStyle: TextStyle(color: AppColors.gray400, fontFamily: 'Lexend', fontSize: 15),
                  filled: true,
                  fillColor: AppColors.white, // Changed from gray50 to white for consistency
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.gray200, width: 1.5), // Changed border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.gray200, width: 1.5), // Changed border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.primary500, width: 2.0),
                  ),
                  errorBorder: OutlineInputBorder( // Added errorBorder
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.requestStatusRejected.withOpacity(0.7), width: 1.5),
                  ),
                  focusedErrorBorder: OutlineInputBorder( // Added focusedErrorBorder
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: AppColors.requestStatusRejected, width: 2.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0), // Adjusted padding
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return l10n.amountValidationErrorRequired; // Use l10n
                  }
                  final number = double.tryParse(value);
                  if (number == null) {
                    return l10n.amountValidationErrorInvalid; // Use l10n
                  }
                  if (number <= 0) {
                    return l10n.amountValidationErrorPositive; // Use l10n for positive amount
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 58, // Match TextFormField height including padding
              padding: const EdgeInsets.all(4), // Keep padding for internal elements
              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(12.0),
                // border: Border.all(color: AppColors.primary100, width: 1.5), // Optional: border for the container
              ),
              child: BlocBuilder<AddRequestCubit, AddRequestState>(
                buildWhen: (previous, current) => current is AddRequestCurrencyUnitChanged || current is AddRequestInitial,
                builder: (context, state) {
                  String currentUnit = cubit.selectedCurrencyUnit;
                  // Use a Row that can fit within the height
                  return Row(
                    mainAxisSize: MainAxisSize.min, // Take only necessary width
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
          minLines: maxLines, // Ensures the field takes up space for maxLines
          style: TextStyle(fontSize: 16, color: AppColors.gray900, fontFamily: 'Lexend'),
          textAlignVertical: TextAlignVertical.top, // Aligns hint text better for multi-line
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.gray400, fontFamily: 'Lexend', fontSize: 15),
            filled: true,
            fillColor: AppColors.white, // Changed from gray50 to white
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.gray200, width: 1.5), // Changed border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: AppColors.gray200, width: 1.5), // Changed border
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
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), // Adjusted padding
          ),
          validator: validator,
        ),
      ],
    );
  }
} // End of AddRequestScreen class

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
    return Material( // Added Material for InkWell splash effect
      color: Colors.transparent, // Make Material transparent
      child: InkWell( // Use InkWell for better tap feedback
        onTap: () => onChanged(value),
        borderRadius: BorderRadius.circular(8.0), // Match container's border radius
        splashColor: AppColors.primary100.withOpacity(0.5), // Optional: splash color
        highlightColor: AppColors.primary100.withOpacity(0.3), // Optional: highlight color
        child: Ink( // Use Ink for decoration that InkWell can draw on
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10), // Adjusted padding
          // No margin here, handle spacing in the parent Row
          decoration: BoxDecoration(
            color: isSelected ? AppColors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isSelected
                ? [
              BoxShadow(
                color: AppColors.gray600.withOpacity(0.15), // Softer shadow
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]
                : [],
            // border: isSelected ? Border.all(color: AppColors.primary300) : null, // Optional: border for selected
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
