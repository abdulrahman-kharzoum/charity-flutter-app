import 'package:flutter/material.dart';
import 'package:charity/theme/color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart'; // Import for firstWhereOrNull
import 'package:charity/features/clinic/cubits/get_clinic_beneficiary_cubit/get_clinic_beneficiary_cubit.dart';
import 'package:charity/features/clinic/models/appointment_model.dart';
import 'package:charity/features/clinic/models/clinic_beneficiary_model.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/core/shared/dialogs/error_dialog.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/core/services/service_locator.dart'; // Import service locator

class AppointmentDetailsScreen extends StatefulWidget {
  final int beneficiaryId;
  final int appointmentId;

  const AppointmentDetailsScreen({
    super.key,
    required this.beneficiaryId,
    required this.appointmentId,
  });

  @override
  State<AppointmentDetailsScreen> createState() => _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetClinicBeneficiaryCubit>().getClinicBeneficiary();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocConsumer<GetClinicBeneficiaryCubit, GetClinicBeneficiaryState>(
      listener: (context, state) {
        if (state.status == SubmissionStatus.error) {
          showErrorDialog(context, state.failure?.message ?? l10n.unexpectedError);
        }
      },
      builder: (context, state) {
        if (state.status == SubmissionStatus.loading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (state.status == SubmissionStatus.success && state.data != null) {
          final ClinicBeneficiaryModel beneficiary = state.data!;
          final AppointmentModel? appointment = beneficiary.appointments.firstWhereOrNull(
            (app) => app.id == widget.appointmentId,
          );

          if (appointment == null) {
            return Scaffold(
              appBar: AppBar(title: Text(l10n.appointmentDetailsTitle)),
              body: Center(child: Text(l10n.noDataAvailable)),
            );
          }

          // Date and Time Formatting
          final DateTime appointmentDate = DateTime.parse(appointment.date);
          final String formattedDate = DateFormat('MMMM d, yyyy').format(appointmentDate);
          final String formattedTime =
              '${appointment.startTime} - ${appointment.endTime}'; // Assuming times are already formatted as strings

          return Scaffold(
            backgroundColor: AppColors.background,
            body: SafeArea(
              child: Column(
                children: [
                  // App Bar Section
                  Container(
                    color: AppColors.background,
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.arrow_back,
                              color: AppColors.textPrimary,
                              size: 24,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            l10n.appointmentDetailsTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lexend',
                            ),
                          ),
                        ),
                        const SizedBox(width: 48), // To balance the back button
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Appointment Information Section
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                            child: Text(
                              l10n.appointmentInformationTitle,
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lexend',
                              ),
                            ),
                          ),
                          // Doctor Info
                          Container(
                            color: AppColors.background,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            constraints: const BoxConstraints(minHeight: 72),
                            child: Row(
                              children: [
                                Container(
                                  width: 56,
                                  height: 56,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://lh3.googleusercontent.com/aida-public/AB6AXuDKp_PICZKKZm2nT-7zTNcjDX_9m0jXyUCnL8-00btz637yWgkMFDZzZ9jTBlXDBMGV1X6ESy49Ff4tmmPLYySETP2plz3eTxVzuaoZNXOm6ZIOZGXOIbtZ0VsQaRMbOfVdVkhZWLL_ZM0O2cIP1WjhwwKEGoZ32wfpb2MeapSP0JYdhp5vd3DzUZSRqd8nxTmdyKM0dNQq-BJlcNJ9Ynixv270wTsme6v16NtAoXTJa_LA2SjaPhtuk_h3ohMwrcxprtGxhtSvqYQ"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Dr. Olivia Bennett', // This should ideally come from backend data
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Lexend',
                                        ),
                                      ),
                                      Text(
                                        'Cardiology', // This should ideally come from backend data
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Lexend',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Date/Time Info
                          Container(
                            color: AppColors.background,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            constraints: const BoxConstraints(minHeight: 72),
                            child: Row(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGreyBackground,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.calendar_today_outlined,
                                    color: AppColors.textPrimary,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        formattedTime,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Lexend',
                                        ),
                                      ),
                                      Text(
                                        formattedDate,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Lexend',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Doctor's Notes/Results Section
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                            child: Text(
                              l10n.doctorNotesResultsTitle,
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lexend',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                            child: Text(
                              appointment.result ?? l10n.noDataAvailable,
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Lexend',
                              ),
                            ),
                          ),
                          // Prescription Section
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                            child: Text(
                              l10n.prescriptionTitle,
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lexend',
                              ),
                            ),
                          ),
                          // Medicine Info - Currently static as no prescription data in API model
                          Container(
                            color: AppColors.background,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            constraints: const BoxConstraints(minHeight: 72),
                            child: Row(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGreyBackground,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.medical_services_outlined,
                                    color: AppColors.textPrimary,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Lisinopril', // Static for now, no prescription data in API
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Lexend',
                                        ),
                                      ),
                                      Text(
                                        '25mg, once daily', // Static for now
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Lexend',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                            child: Text(
                              'Take one tablet by mouth each morning. Monitor blood pressure regularly and report any side effects, such as dizziness or cough, to your doctor.', // Static for now
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Lexend',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Bottom Spacer
                  Container(
                    height: 20,
                    color: AppColors.background,
                  ),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Center(child: Text(l10n.somethingWentWrong)),
          );
        }
      },
    );
  }
}