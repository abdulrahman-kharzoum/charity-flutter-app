import 'package:charity/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/screens/profile_screen/personal_info_screen.dart';
import 'package:charity/screens/profile_screen/family_info_screen.dart';
import 'package:charity/screens/profile_screen/dependents_info_screen.dart';
import 'package:charity/features/Services/profile/cubits/get_beneficiary_profile_cubit/get_beneficiary_profile_cubit.dart';
import 'package:charity/features/Services/profile/cubits/get_beneficiary_profile_cubit/get_beneficiary_profile_cubit.dart';
import 'package:charity/features/Services/profile/models/beneficiary_profile_model.dart';
import 'package:charity/core/services/status.dart'; // For SubmissionStatus
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:get_it/get_it.dart'; // For sl

class ProfileDrawer extends StatelessWidget {
  final double drawerWidth;
  final Animation<double> contentFadeAnimation;
  final GetBeneficiaryProfileCubit beneficiaryProfileCubit;
  final bool isDrawerOpen;

  const ProfileDrawer({
    super.key,
    required this.drawerWidth,
    required this.contentFadeAnimation,
    required this.beneficiaryProfileCubit,
    required this.isDrawerOpen,
  });

  Widget _buildDrawerHeader(BuildContext context, AppLocalizations l10n, bool isRtl, BeneficiaryProfileModel? beneficiaryProfile) {
    final name = '${beneficiaryProfile?.firstName ?? ''} ${beneficiaryProfile?.lastName ?? ''}'.trim().isEmpty
        ? l10n.profileUserNamePlaceholder
        : '${beneficiaryProfile!.firstName} ${beneficiaryProfile.lastName}';
    final phone = beneficiaryProfile?.mobileNumber ?? l10n.profileUserPhonePlaceholder;
    final avatarUrl = 'https://preview.redd.it/help-me-find-a-specific-image-of-a-cat-with-glasses-v0-3mxdd5sdeise1.jpeg?auto=webp&s=d8066b8bb285bbb25455baca627be4a393f1d4f4';

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isRtl) ...[
            CircleAvatar(
              radius: 30,
              backgroundImage: avatarUrl != null && avatarUrl.isNotEmpty ? NetworkImage(avatarUrl) : null,
              backgroundColor: AppColors.primary200.withOpacity(0.5),
              child: avatarUrl == null || avatarUrl.isEmpty ? const Icon(Icons.person, size: 30, color: AppColors.white) : null,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Lexend'),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  if (phone.isNotEmpty)
                    Text(
                      phone,
                      style: const TextStyle(color: AppColors.lightGrey, fontSize: 14, fontFamily: 'Lexend'),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                ],
              ),
            ),
            // Removed IconButton for editing
          ],
          if (!isRtl) ...[
            // Removed IconButton for editing
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Lexend'),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  if (phone.isNotEmpty)
                    Text(
                      phone,
                      style: const TextStyle(color: AppColors.lightGrey, fontSize: 14, fontFamily: 'Lexend'),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            CircleAvatar(
              radius: 30,
              backgroundImage: avatarUrl != null && avatarUrl.isNotEmpty ? NetworkImage(avatarUrl) : null,
              backgroundColor: AppColors.primary200.withOpacity(0.5),
              child: avatarUrl == null || avatarUrl.isEmpty ? const Icon(Icons.person, size: 30, color: AppColors.white) : null,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, IconData iconData, VoidCallback onTap, bool isRtl) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        splashColor: AppColors.primary100.withOpacity(0.2),
        highlightColor: AppColors.primary100.withOpacity(0.1),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              if (!isRtl) Icon(iconData, color: AppColors.white.withOpacity(0.9), size: 20),
              if (!isRtl) const SizedBox(width: 15),

              Expanded(
                child: Text(
                  title,
                  textAlign: isRtl ? TextAlign.right : TextAlign.left,
                  style: const TextStyle(color: AppColors.white, fontSize: 16, fontFamily: 'Lexend', fontWeight: FontWeight.w500),
                ),
              ),
              if (isRtl) const SizedBox(width: 15),
              if (isRtl) Icon(iconData, color: AppColors.white.withOpacity(0.9), size: 20),

              // Consistent arrow position
              const SizedBox(width: 10),
              Icon(
                isRtl ? Icons.arrow_back_ios_new : Icons.arrow_forward_ios,
                color: AppColors.white.withOpacity(0.7),
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context, AppLocalizations l10n, bool isRtl) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Center(
        child: OutlinedButton.icon(
          icon: Icon(isRtl ? Icons.login_outlined : Icons.exit_to_app, color: AppColors.white, size: 20),
          label: Text(
            l10n.profileLogout,
            style: const TextStyle(color: AppColors.white, fontSize: 15, fontFamily: 'Lexend', fontWeight: FontWeight.w600),
          ),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            side: BorderSide(color: AppColors.white.withOpacity(0.5)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            foregroundColor: AppColors.white.withOpacity(0.8),
          ),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil('/login_screen', (route) => false);
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.profileLogout))
            );
          },
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context, AppLocalizations l10n, bool isRtl) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Center(
        child: OutlinedButton.icon(
          icon: Icon(isRtl ? Icons.arrow_forward : Icons.arrow_back, color: AppColors.white, size: 20),
          label: Text(
            l10n.backButton,
            style: const TextStyle(color: AppColors.white, fontSize: 15, fontFamily: 'Lexend', fontWeight: FontWeight.w600),
          ),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            side: BorderSide(color: AppColors.white.withOpacity(0.5)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            foregroundColor: AppColors.white.withOpacity(0.8),
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;

    return Material(
      color: Colors.transparent,
      child: BlocBuilder<GetBeneficiaryProfileCubit, GetBeneficiaryProfileState>(
        bloc: beneficiaryProfileCubit,
        builder: (context, profileState) {
          BeneficiaryProfileModel? beneficiaryProfile;

          if (profileState.status == SubmissionStatus.success && profileState.data != null) {
            beneficiaryProfile = profileState.data;
          }

          return Align(
            alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
            child: FadeTransition(
              opacity: contentFadeAnimation,
              child: Container(
                width: drawerWidth,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.slate800.withOpacity(0.95),
                ),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 10,
                  left: isRtl ? 15 : 20,
                  right: isRtl ? 20 : 15,
                  bottom: MediaQuery.of(context).padding.bottom + 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDrawerHeader(context, l10n, isRtl, beneficiaryProfile),
                    Divider(color: AppColors.gray200, height: 20, thickness: 0.5),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          _buildDrawerItem(context, l10n.profilePersonalInfo, Icons.person_outline, () {
                            Navigator.of(context).pop(); // Close drawer
                            if (beneficiaryProfile != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(
                                    initialChild: PersonalInfoScreen(
                                      beneficiaryProfile: beneficiaryProfile!,
                                    ),
                                    titleKey: 'profilePersonalInfo', // Pass title key
                                  ),
                                ),
                              );
                            }
                          }, isRtl),
                          _buildDrawerItem(context, l10n.profileFamilyInfo, Icons.people_outline, () {
                            Navigator.of(context).pop(); // Close drawer
                            if (beneficiaryProfile != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(
                                    initialChild: FamilyInfoScreen(
                                      beneficiaryProfile: beneficiaryProfile!,
                                    ),
                                    titleKey: 'profileFamilyInfo', // Pass title key
                                  ),
                                ),
                              );
                            }
                          }, isRtl),
                          _buildDrawerItem(context, l10n.profileDependentsInfo, Icons.child_care_outlined, () {
                            Navigator.of(context).pop(); // Close drawer
                            if (beneficiaryProfile != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(
                                    initialChild: DependentsInfoScreen(
                                      beneficiaryProfile: beneficiaryProfile!,
                                    ),
                                    titleKey: 'profileDependentsInfo', // Pass title key
                                  ),
                                ),
                              );
                            }
                          }, isRtl),
                          _buildDrawerItem(context, l10n.profileAvailableAid, Icons.healing_outlined, () {
                            Navigator.of(context).pop(); // Close drawer
                            // TODO: Implement navigation to Available Aid Screen
                          }, isRtl),
                          _buildDrawerItem(context, l10n.profileRequests, Icons.list_alt_outlined, () {
                            Navigator.of(context).pop(); // Close drawer
                            // TODO: Implement navigation to Requests Screen
                          }, isRtl),
                        ],
                      ),
                    ),
                    _buildBackButton(context, l10n, isRtl),
                    _buildLogoutButton(context, l10n, isRtl),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
