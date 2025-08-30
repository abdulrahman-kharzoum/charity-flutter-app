import 'package:flutter/material.dart';
import 'package:charity/features/Services/profile/models/beneficiary_profile_model.dart';
import 'package:charity/features/Services/profile/models/profile_child_model.dart'; // Import ProfileChildModel
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/screens/profile_screen/profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:charity/theme/color.dart';

class FamilyInfoScreen extends StatelessWidget {
  final BeneficiaryProfileModel beneficiaryProfile;

  const FamilyInfoScreen({super.key, required this.beneficiaryProfile});

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

  Widget _buildChildCard(BuildContext context, ProfileChildModel child, int index) {
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
              '${l10n.childLabel} ${index + 1}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primary500,
              ),
            ),
            const Divider(color: AppColors.primary100),
            _buildInfoRow(l10n.nameLabel, child.name, Icons.person_outline, AppColors.slate700),
            _buildInfoRow(l10n.birthDate, child.birthDate.split('T')[0], Icons.cake_outlined, AppColors.teal700),
            _buildInfoRow(l10n.ageLabel, child.age.toString(), Icons.numbers, AppColors.amber700),
            _buildInfoRow(l10n.gender, child.gender, Icons.wc_outlined, AppColors.indigo700),
            _buildInfoRow(l10n.isAlive, child.isAlive ? l10n.yes : l10n.no, Icons.favorite_outline, AppColors.green),
            _buildInfoRow(l10n.partnerName, child.partnerName, Icons.handshake_outlined, AppColors.primary600),
            _buildInfoRow(l10n.residencePlace, child.residencePlace, Icons.location_on_outlined, AppColors.slate600),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final children = beneficiaryProfile.children;

    return Scaffold(
      body: children.isEmpty
          ? Center(
              child: Text(
                l10n.noChildrenInfo,
                style: const TextStyle(fontSize: 18, color: AppColors.slate500),
                textAlign: TextAlign.center,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: children.length,
              itemBuilder: (context, index) {
                return _buildChildCard(context, children[index], index);
              },
            ),
    );
  }
}