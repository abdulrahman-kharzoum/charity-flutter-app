import 'package:flutter/material.dart';
import 'package:charity/features/Services/profile/models/beneficiary_profile_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/screens/profile_screen/profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:charity/theme/color.dart';

class PersonalInfoScreen extends StatelessWidget {
  final BeneficiaryProfileModel beneficiaryProfile;

  const PersonalInfoScreen({super.key, required this.beneficiaryProfile});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Helper function to build a colorful info tile
    Widget _buildInfoTile(String title, String value, IconData icon, Color color) {
      return Card(
        color: color.withOpacity(0.1),
        elevation: 0,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: color, size: 28),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: color,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      value,
                      style: TextStyle(
                        color: AppColors.slate800, // Adjust text color for readability
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoTile(l10n.firstName, beneficiaryProfile.firstName, Icons.person_outline, AppColors.primary500),
            _buildInfoTile(l10n.lastName, beneficiaryProfile.lastName, Icons.person_outline, AppColors.primary500),
            _buildInfoTile(l10n.fatherName, beneficiaryProfile.fatherName, Icons.man_outlined, AppColors.slate700),
            _buildInfoTile(l10n.motherName, beneficiaryProfile.motherName, Icons.woman_outlined, AppColors.slate700),
            _buildInfoTile(l10n.birthDate, beneficiaryProfile.birthDate.split('T')[0], Icons.cake_outlined, AppColors.teal700),
            _buildInfoTile(l10n.birthPlace, beneficiaryProfile.birthPlace, Icons.location_on_outlined, AppColors.teal700),
            _buildInfoTile(l10n.gender, beneficiaryProfile.gender, Icons.wc_outlined, AppColors.amber700),
            _buildInfoTile(l10n.nationalNumber, beneficiaryProfile.nationalNumber, Icons.credit_card_outlined, AppColors.amber700),
            _buildInfoTile(l10n.job, beneficiaryProfile.job, Icons.work_outline, AppColors.indigo700),
            _buildInfoTile(l10n.healthStatus, beneficiaryProfile.healthStatus, Icons.health_and_safety_outlined, AppColors.indigo700),
            _buildInfoTile(l10n.phoneNumber, beneficiaryProfile.phoneNumber, Icons.phone_outlined, AppColors.primary600),
            _buildInfoTile(l10n.mobileNumber, beneficiaryProfile.mobileNumber, Icons.smartphone_outlined, AppColors.primary600),
            _buildInfoTile(l10n.address, beneficiaryProfile.address, Icons.home_outlined, AppColors.slate600),
            _buildInfoTile(l10n.residenceType, beneficiaryProfile.residenceType, Icons.apartment_outlined, AppColors.slate600),
            _buildInfoTile(l10n.monthlyIncome, '${beneficiaryProfile.monthlyIncome} SYP', Icons.attach_money_outlined, AppColors.green),
            _buildInfoTile(l10n.caseDescription, beneficiaryProfile.caseDescription, Icons.description_outlined, AppColors.green),
            if (beneficiaryProfile.medicalHistory != null && beneficiaryProfile.medicalHistory!.isNotEmpty)
              _buildInfoTile(l10n.medicalHistory, beneficiaryProfile.medicalHistory!, Icons.medical_services_outlined, AppColors.darkRed),
          ],
        ),
      ),
    );
  }
}