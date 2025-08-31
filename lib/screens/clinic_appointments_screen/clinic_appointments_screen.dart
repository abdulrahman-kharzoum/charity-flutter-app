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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Appointment: ${appointment.id} - ${appointment.date}'),
      ),
    );
  }
}