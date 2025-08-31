import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/cubits/localization/localization_cubit.dart'; // Import LocalizationCubit
import 'package:charity/theme/color.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/core/shared/local_network.dart';
import 'package:charity/features/auth/models/user_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});


  List<DropdownMenuItem<String>> _buildLanguageDropdownItems(BuildContext context) {

    final Map<String, String> supportedLanguages = {
      'en': 'English',
      'ar': 'العربية',
    };
    return supportedLanguages.entries.map((entry) {
      return DropdownMenuItem<String>(
        value: entry.key,
        child: Text(entry.value),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    // Listen to LocalizationCubit for current locale
    final localizationCubit = context.watch<LocalizationCubit>();
    final currentLocaleCode = localizationCubit.state.locale.languageCode;

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        if (state is! SettingsLoaded) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final settingsState = state;
        final isDark = settingsState.themeMode == ThemeMode.dark;

        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: isDark ? AppColors.darkGradient : AppColors.lightGradient,
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 150.0,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    title: Text(
                      localizations.settings,
                      style: TextStyle(
                        color: isDark ? AppColors.white : AppColors.slate800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    background: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.purple900.withOpacity(0.2),
                            AppColors.primaryBlue.withOpacity(0.2),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildProfileCard(context, isDark, localizations),
                        const SizedBox(height: 24),
                        // Add the Language Dropdown
                        _buildLanguageDropdown(context, isDark, currentLocaleCode, localizations),
                        const SizedBox(height: 16), // Spacing
                        ..._buildSettingsItems(context, settingsState, localizations, currentLocaleCode) // Pass currentLocaleCode
                            .map((widget) => Animate(
                          effects: const [
                            SlideEffect(
                              begin: Offset(0, 0.2),
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeOut,
                            ),
                            FadeEffect(duration: Duration(milliseconds: 400))
                          ],
                          child: widget,
                        ))
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageDropdown(BuildContext context, bool isDark, String currentLanguageCode, AppLocalizations localizations) {
    final localizationCubit = context.read<LocalizationCubit>();
    String currentLanguageDisplay;
    if (currentLanguageCode == 'en') {
      currentLanguageDisplay = localizations.english;
    } else if (currentLanguageCode == 'ar') {
      currentLanguageDisplay = localizations.arabic;
    } else {
      currentLanguageDisplay = currentLanguageCode.toUpperCase();
    }


    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isDark ? AppColors.slate800.withOpacity(0.5) : AppColors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: isDark ? AppColors.slate700.withOpacity(0.5) : AppColors.white.withOpacity(0.5)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.sky400, AppColors.primaryBlue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.language, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localizations.language, // Title "Language"
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: isDark ? AppColors.white : AppColors.slate800,
                    ),
                  ),
                  // Current language display can be part of the DropdownButton itself
                ],
              ),
            ),
            DropdownButton<String>(
              value: currentLanguageCode,
              icon: Icon(Icons.arrow_drop_down, color: isDark ? AppColors.slate400 : AppColors.slate500),
              dropdownColor: isDark ? AppColors.slate700 : AppColors.white,
              underline: const SizedBox(), // Removes the default underline
              style: TextStyle(color: isDark ? AppColors.white : AppColors.slate800, fontSize: 14),
              items: _buildLanguageDropdownItems(context),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  localizationCubit.changeLanguage(newValue);
                  // context.read<SettingsCubit>().updateLanguagePreference(newValue);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context, bool isDark, AppLocalizations localizations) {
    final UserModel? user = CacheNetwork.getUser();
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/profile'),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDark ? AppColors.slate800.withOpacity(0.5) : AppColors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: isDark ? AppColors.slate700.withOpacity(0.5) : AppColors.white.withOpacity(0.5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100&h=100&fit=crop&crop=face'),
                ),
                Positioned(
                  bottom: -4,
                  right: -4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: AppColors.sky400,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, color: AppColors.white, size: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user?.firstName ?? ''} ${user?.lastName ?? ''}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: isDark ? AppColors.white : AppColors.slate800,
                    ),
                  ),
                  Text(
                    user?.phoneNumber ?? 'N/A',
                    style: TextStyle(
                      color: isDark ? AppColors.slate400 : AppColors.slate600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: isDark ? AppColors.slate400 : AppColors.slate500),
          ],
        ),
      ).animate().scale(
        duration: 400.ms,
        curve: Curves.easeOut,
      ),
    );
  }


  List<Widget> _buildSettingsItems(BuildContext context, SettingsLoaded state, AppLocalizations localizations, String currentLocaleCode) {
    final settingsCubit = context.read<SettingsCubit>();
    final isDark = state.themeMode == ThemeMode.dark;

    return [
      _buildSettingsTile(
        isDark: isDark,
        icon: state.notificationsEnabled ? Icons.notifications_active : Icons.notifications_off,
        title: localizations.notifications,
        subtitle: state.notificationsEnabled ? localizations.enabled : localizations.disabled,
        onTap: () => Navigator.pushNamed(context, '/notifications'),
        trailing: Switch(
          value: state.notificationsEnabled,
          onChanged: (value) => settingsCubit.toggleNotifications(),
        ),
      ),
      _buildSettingsTile(
        isDark: isDark,
        icon: isDark ? Icons.dark_mode : Icons.light_mode,
        title: localizations.theme,
        subtitle: isDark ? localizations.dark : localizations.light,
        onTap: () => settingsCubit.toggleTheme(),
      ),
      _buildSettingsTile(
        isDark: isDark,
        icon: Icons.info,
        title: localizations.aboutUs,
        subtitle: localizations.appInfo,
        onTap: () {},
        hasChevron: true,
      ),
    ];
  }

  Widget _buildSettingsTile({
    required bool isDark,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool hasChevron = false,
    Widget? trailing,
  }) {
    // ... your existing code ...
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark ? AppColors.slate800.withOpacity(0.5) : AppColors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: isDark ? AppColors.slate700.withOpacity(0.5) : AppColors.white.withOpacity(0.5)),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.sky400, AppColors.primaryBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.white, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: isDark ? AppColors.white : AppColors.slate800,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: isDark ? AppColors.slate400 : AppColors.slate600,
                      ),
                    ),
                  ],
                ),
              ),
              if (hasChevron)
                Icon(Icons.chevron_right,
                    color: isDark ? AppColors.slate400 : AppColors.slate500)
              else if (trailing != null)
                trailing,
            ],
          ),
        ),
      ),
    );
  }
}
