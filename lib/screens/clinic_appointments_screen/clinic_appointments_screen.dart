import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/features/clinic/cubits/get_clinic_beneficiary_cubit/get_clinic_beneficiary_cubit.dart';
import 'package:charity/core/shared/dialogs/error_dialog.dart';
import 'package:charity/core/functions/apis_error_handler.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/features/clinic/models/appointment_model.dart';
import 'package:charity/screens/clinic_appointments_screen/appointment_details_screen.dart'; // Import the new screen
import 'package:intl/intl.dart';
import 'package:get_it/get_it.dart';
import 'package:charity/core/services/service_locator.dart';
import 'package:charity/features/clinic/repo/clinic_repository.dart';

class ClinicAppointmentsScreen extends StatefulWidget {
  const ClinicAppointmentsScreen({super.key});

  @override
  State<ClinicAppointmentsScreen> createState() => _ClinicAppointmentsScreenState();
}

class _ClinicAppointmentsScreenState extends State<ClinicAppointmentsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetClinicBeneficiaryCubit>().getClinicBeneficiary();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          l10n.appointmentsTitle,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<GetClinicBeneficiaryCubit, GetClinicBeneficiaryState>(
        listener: (context, state) {
          if (state.status == SubmissionStatus.error) {
            showErrorDialog(context, state.failure?.message ?? l10n.somethingWentWrong);
          }
        },
        builder: (context, state) {
          if (state.status == SubmissionStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == SubmissionStatus.success) {
            if (state.data == null || state.data!.appointments.isEmpty) {
              return Center(child: Text(l10n.noItemsAvailable));
            }

            final now = DateTime.now();
            final pastAppointments = state.data!.appointments.where((appointment) {
              try {
                final appointmentDate = DateTime.parse(appointment.date);
                return appointmentDate.isBefore(now);
              } catch (e) {
                // Handle parsing errors, e.g., log them or treat as not past
                return false;
              }
            }).toList();

            final upcomingAppointments = state.data!.appointments.where((appointment) {
              try {
                final appointmentDate = DateTime.parse(appointment.date);
                return appointmentDate.isAfter(now) || appointmentDate.isAtSameMomentAs(now);
              } catch (e) {
                return false;
              }
            }).toList();

            return CustomScrollView(
              slivers: [
                if (upcomingAppointments.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        l10n.upcomingAppointments,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: upcomingAppointments.length,
                    itemBuilder: (context, index) {
                      final appointment = upcomingAppointments[index];
                      return AppointmentCard(appointment: appointment);
                    },
                  ),
                ],
                if (pastAppointments.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        l10n.pastAppointments,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: pastAppointments.length,
                    itemBuilder: (context, index) {
                      final appointment = pastAppointments[index];
                      return AppointmentCard(appointment: appointment);
                    },
                  ),
                ],
                if (pastAppointments.isEmpty && upcomingAppointments.isEmpty)
                  SliverFillRemaining(
                    child: Center(child: Text(l10n.noItemsAvailable)),
                  ),
              ],
            );
          } else if (state.status == SubmissionStatus.error) {
            return Center(child: Text(state.failure?.message ?? l10n.somethingWentWrong));
          }
          return const SizedBox.shrink(); // Initial state or unexpected state
        },
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final AppointmentModel appointment;

  const AppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => GetClinicBeneficiaryCubit(sl<ClinicRepository>()),
              child: AppointmentDetailsScreen(
                beneficiaryId: appointment.ownerId, // Assuming ownerId is beneficiaryId
                appointmentId: appointment.id,
              ),
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. ${appointment.doctorName ?? 'Unknown'}', // Assuming doctorName exists or is added
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      appointment.specialization ?? l10n.unknownSpecialization,
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${DateFormat('EEE, MMM d').format(DateTime.parse(appointment.date))} · ${appointment.startTime}',
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () {
                        // Handle "View Results" action
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlocProvider(
                              create: (context) => GetClinicBeneficiaryCubit(sl<ClinicRepository>()),
                              child: AppointmentDetailsScreen(
                                beneficiaryId: appointment.ownerId,
                                appointmentId: appointment.id,
                              ),
                            ),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.primaryBlue),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                      child: Text(
                        l10n.viewResultsButton,
                        style: const TextStyle(color: AppColors.primaryBlue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.lightGreyBackground,
                  borderRadius: BorderRadius.circular(12.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/doctor2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}