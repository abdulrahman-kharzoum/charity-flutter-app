import 'package:flutter/material.dart';
import 'package:charity/features/Services/profile/models/beneficiary_profile_model.dart';
import 'package:charity/features/Services/profile/models/uncle_model.dart';
import 'package:charity/features/Services/profile/models/partner_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/screens/profile_screen/profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:charity/theme/color.dart';

class DependentsInfoScreen extends StatelessWidget {
  final BeneficiaryProfileModel beneficiaryProfile;

  const DependentsInfoScreen({super.key, required this.beneficiaryProfile});

  // Helper function to build an info row
  Widget _buildInfoRow(String title, String value, IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title:',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.slate500,
                    fontSize: 14,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.slate800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUncleCard(BuildContext context, UncleModel uncle, int index) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      color: AppColors.primary50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${l10n.uncleLabel} ${index + 1}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primary500,
              ),
            ),
            const Divider(color: AppColors.primary100),
            _buildInfoRow(l10n.firstName, uncle.firstName, Icons.person_outline, AppColors.slate700),
            _buildInfoRow(l10n.lastName, uncle.lastName, Icons.person_outline, AppColors.slate700),
            _buildInfoRow(l10n.fromLabel, uncle.from, Icons.family_restroom_outlined, AppColors.teal700),
            _buildInfoRow(l10n.job, uncle.job, Icons.work_outline, AppColors.amber700),
            _buildInfoRow(l10n.providedAid, uncle.providedAid, Icons.volunteer_activism_outlined, AppColors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildPartnerCard(BuildContext context, PartnerModel partner, int index) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      color: AppColors.primary50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${l10n.partnerLabel} ${index + 1}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primary500,
              ),
            ),
            const Divider(color: AppColors.primary100),
            _buildInfoRow(l10n.firstName, partner.firstName, Icons.person_outline, AppColors.slate700),
            _buildInfoRow(l10n.lastName, partner.lastName, Icons.person_outline, AppColors.slate700),
            _buildInfoRow(l10n.job, partner.job, Icons.work_outline, AppColors.amber700),
            _buildInfoRow(l10n.gender, partner.gender, Icons.wc_outlined, AppColors.indigo700),
            _buildInfoRow(l10n.healthStatus, partner.healthStatus, Icons.health_and_safety_outlined, AppColors.green),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final uncles = beneficiaryProfile.uncles;
    final partners = beneficiaryProfile.partners;

    return Scaffold(
      body: (uncles.isEmpty && partners.isEmpty)
          ? Center(
              child: Text(
                l10n.noDependentsInfo,
                style: const TextStyle(fontSize: 18, color: AppColors.slate500),
                textAlign: TextAlign.center,
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                if (partners.isNotEmpty) ...[
                  Text(
                    l10n.partnersInfoTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...partners.asMap().entries.map((entry) {
                    final index = entry.key;
                    final partner = entry.value;
                    return _buildPartnerCard(context, partner, index);
                  }).toList(),
                  const SizedBox(height: 20),
                ],
                if (uncles.isNotEmpty) ...[
                  Text(
                    l10n.unclesInfoTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...uncles.asMap().entries.map((entry) {
                    final index = entry.key;
                    final uncle = entry.value;
                    return _buildUncleCard(context, uncle, index);
                  }).toList(),
                ],
              ],
            ),
    );
  }
}