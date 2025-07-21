import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/profile_cubit/profile_cubit.dart';

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/models/user_profile_model.dart' hide UserProfile; // Ensure this path is correct
import 'package:charity/theme/color.dart'; // Ensure this path is correct

class ProfileDrawer extends StatelessWidget {
  final double drawerWidth;
  final Animation<double> contentFadeAnimation;

  const ProfileDrawer({
    super.key,
    required this.drawerWidth,
    required this.contentFadeAnimation,
  });

  Widget _buildDrawerHeader(BuildContext context, AppLocalizations l10n, bool isRtl, UserProfile? userProfile) {
    // Using more generic placeholders, ensure these exist in your .arb files or adjust
    final name = userProfile?.name ?? l10n.profileUserNamePlaceholder; // e.g., "User Name"
    final phone = userProfile?.phone ?? l10n.profileUserPhonePlaceholder; // e.g., "Phone Number"
    final avatarUrl = userProfile?.avatarUrl;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0), // Added some vertical padding
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
                  if (phone.isNotEmpty) // Only show phone if available
                    Text(
                      phone,
                      style: const TextStyle(color: AppColors.lightGrey, fontSize: 14, fontFamily: 'Lexend'),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit_outlined, color: AppColors.white, size: 22),
              tooltip: l10n.editProfile, // e.g., "Edit Profile"
              onPressed: () {
                context.read<ProfileCubit>().toggleEdit(); // Signal to main screen to enter edit mode
                context.read<ProfileCubit>().closeDrawer(); // Close drawer to show the form
              },
            ),
          ],
          if (!isRtl) ...[
            IconButton(
              icon: const Icon(Icons.edit_outlined, color: AppColors.white, size: 22),
              tooltip: l10n.editProfile, // e.g., "Edit Profile"
              onPressed: () {
                context.read<ProfileCubit>().toggleEdit(); // Signal to main screen to enter edit mode
                context.read<ProfileCubit>().closeDrawer(); // Close drawer to show the form
              },
            ),
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
                  if (phone.isNotEmpty) // Only show phone if available
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
          margin: const EdgeInsets.symmetric(vertical: 6), // Reduced vertical margin slightly
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0), // Adjusted padding
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.08), // Slightly adjusted opacity
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // For LTR: Icon on left, Text, Arrow on right
              // For RTL: Arrow on left, Text, Icon on right (conceptually)
              // Let's simplify: always put arrow on the "end" side based on text direction.
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
          icon: Icon(isRtl ? Icons.login_outlined : Icons.exit_to_app, color: AppColors.white, size: 20), // Icons swapped for RTL consistency
          label: Text(
            l10n.profileLogout, // Generic "Logout" key
            style: const TextStyle(color: AppColors.white, fontSize: 15, fontFamily: 'Lexend', fontWeight: FontWeight.w600),
          ),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            side: BorderSide(color: AppColors.white.withOpacity(0.5)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            foregroundColor: AppColors.white.withOpacity(0.8), // For splash/highlight
          ),
          onPressed: () {
            // TODO: Implement actual logout logic
            // e.g., context.read<AuthCubit>().logout();
            // Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.profileLogout)) // Localized message
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;

    // Watch the ProfileCubit state for changes
    final profileState = context.watch<ProfileCubit>().state;
    UserProfile? userProfile;

    if (profileState is ProfileCurrentState) {
      userProfile = profileState.userProfile;
      if (profileState.isLoadingProfile && userProfile == null) {
        // Optionally show a loading indicator within the drawer header
        // For simplicity, we'll let the header show placeholders
      }
    }
    // Add other state checks if necessary (e.g., ProfileLoaded if it's a distinct state)

    return Material(
      color: Colors.transparent, // Drawer container itself is part of the animated stack
      child: Align(
        alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
        child: FadeTransition(
          opacity: contentFadeAnimation,
          child: Container(
            width: drawerWidth,
            height: double.infinity,
            // The actual visual background of the drawer's content area
            decoration: BoxDecoration(
              color: AppColors.slate800.withOpacity(0.95), // Example dark background
              // You could use a gradient here as well
              // gradient: AppColors.darkDrawerGradient,
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 10, // Reduced top padding a bit
              left: isRtl ? 15 : 20, // Adjusted padding
              right: isRtl ? 20 : 15, // Adjusted padding
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDrawerHeader(context, l10n, isRtl, userProfile),
                Divider(color: AppColors.gray200, height: 20, thickness: 0.5),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      // Ensure these l10n keys are generic or update them
                      _buildDrawerItem(context, l10n.profilePersonalInfo, Icons.person_outline, () { /* TODO: Navigate or show relevant screen part */ context.read<ProfileCubit>().closeDrawer(); }, isRtl),
                      _buildDrawerItem(context, l10n.profileFamilyInfo, Icons.people_outline, () { /* TODO: Navigate */ context.read<ProfileCubit>().closeDrawer(); }, isRtl),
                      _buildDrawerItem(context, l10n.profileDependentsInfo, Icons.child_care_outlined, () { /* TODO: Navigate */ context.read<ProfileCubit>().closeDrawer(); }, isRtl),
                      _buildDrawerItem(context, l10n.profileGroupInfo, Icons.group_work_outlined, () { /* TODO: Navigate */ context.read<ProfileCubit>().closeDrawer(); }, isRtl),
                      _buildDrawerItem(context, l10n.profileAvailableAid, Icons.healing_outlined, () { /* TODO: Navigate */ context.read<ProfileCubit>().closeDrawer(); }, isRtl),
                      _buildDrawerItem(context, l10n.profileRequests, Icons.list_alt_outlined, () { /* TODO: Navigate */ context.read<ProfileCubit>().closeDrawer(); }, isRtl),
                    ],
                  ),
                ),
                _buildLogoutButton(context, l10n, isRtl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
