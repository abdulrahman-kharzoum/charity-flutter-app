import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart'; // Keep for other animations if needed
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:charity/features/Services/profile/cubits/get_beneficiary_profile_cubit/get_beneficiary_profile_cubit.dart';
import 'package:charity/features/Services/profile/cubits/get_beneficiary_profile_cubit/get_beneficiary_profile_cubit.dart';
import 'package:charity/core/shared/local_network.dart';
import 'package:charity/core/services/status.dart'; // Assuming SubmissionStatus is here
import 'package:charity/core/services/service_locator.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/widgets/profile_drawer.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class ProfileScreen extends StatefulWidget {
  final Widget? child;
  final bool showAppBar;
  const ProfileScreen({super.key, this.child, this.showAppBar = true});

  static final GlobalKey<_ProfileScreenState> profileScreenKey =
      GlobalKey<_ProfileScreenState>();

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _drawerAnimationController;
  late Animation<double> _mainScreenSlideAnimation;
  late Animation<double> _mainScreenScaleAnimation;
  late Animation<double> _mainScreenBorderRadiusAnimation;
  late Animation<double> _mirrorScreenScaleAnimation;
  late Animation<double> _mirrorScreenOpacityAnimation;

  final double _drawerWidthFraction = 0.75;
  final double _screenScaleMin = 0.8;
  final Duration _animationDuration = const Duration(milliseconds: 300);

  // Directly use GetBeneficiaryProfileCubit
  late GetBeneficiaryProfileCubit _getBeneficiaryProfileCubit;

  @override
  void initState() {
    super.initState();

    _getBeneficiaryProfileCubit = sl<GetBeneficiaryProfileCubit>(); // Get instance from service locator

    _drawerAnimationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );

    _mainScreenSlideAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));
    _mainScreenScaleAnimation = Tween<double>(begin: 1.0, end: _screenScaleMin)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));
    _mainScreenBorderRadiusAnimation = Tween<double>(begin: 0.0, end: 24.0)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));

    _mirrorScreenScaleAnimation = Tween<double>(begin: _screenScaleMin - 0.05, end: _screenScaleMin - 0.1)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));
    _mirrorScreenOpacityAnimation = Tween<double>(begin: 0.0, end: 0.5)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: const Interval(0.0, 0.7, curve: Curves.easeOut)));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _fetchProfileData();
      }
    });
  }

  void _fetchProfileData() {
    final beneficiaryIdString = CacheNetwork.getBeneficiaryId();
    if (beneficiaryIdString != null) {
      final beneficiaryId = int.tryParse(beneficiaryIdString);
      if (beneficiaryId != null) {
        _getBeneficiaryProfileCubit.getBeneficiaryProfile(beneficiaryId: beneficiaryId);
      } else {
        // Handle case where beneficiaryId is not a valid integer
        print("Error: Beneficiary ID is not a valid integer.");
      }
    } else {
      // Handle case where beneficiaryId is null (user not logged in or data missing)
      print("Error: Beneficiary ID not found in cache.");
    }
  }

  // Helper to manage drawer state, independent of profile data fetching
  void _toggleDrawer() {
    if (!mounted) return; // Add this line

    if (_drawerAnimationController.status == AnimationStatus.completed || _drawerAnimationController.status == AnimationStatus.forward) {
      _drawerAnimationController.reverse();
    } else {
      _drawerAnimationController.forward();
    }
  }

  void toggleDrawer() {
    _toggleDrawer();
  }

  @override
  void dispose() {
    _drawerAnimationController.dispose();
    super.dispose();
  }

  Widget _buildProfileContent(BuildContext context, GetBeneficiaryProfileState profileState) {
    final localizations = AppLocalizations.of(context)!;
    final settingsState = context.watch<SettingsCubit>().state;
    final themeMode = settingsState is SettingsLoaded ? settingsState.themeMode : ThemeMode.system;
    final isDark = themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            MediaQuery.of(context).platformBrightness == Brightness.dark);

    if (profileState.status == SubmissionStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    } else if (profileState.status == SubmissionStatus.error) {
      return Center(child: Text('Error: ${profileState.failure?.message ?? "Unknown error"}'));
    } else if (profileState.status == SubmissionStatus.success &&
        profileState.data != null) {
      final beneficiaryProfile = profileState.data!;

      // if a child widget is provided, display it. Otherwise, show default content.
      if (widget.child != null) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: widget.child,
        );
      }
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            if (widget.showAppBar)
              _buildAppBar(context, isDark, localizations),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildProfileHeader(
                        beneficiaryProfile.firstName,
                        beneficiaryProfile.lastName,
                        'https://preview.redd.it/help-me-find-a-specific-image-of-a-cat-with-glasses-v0-3mxdd5sdeise1.jpeg?auto=webp&s=d8066b8bb285bbb25455baca627be4a393f1d4f4', // New network image
                        localizations,
                        isDark),
                    const SizedBox(height: 24),
                    _buildInfoTile(
                        localizations.nationalNumber,
                        beneficiaryProfile.nationalNumber,
                        Icons.credit_card_outlined,
                        AppColors.amber700),
                    _buildInfoTile(
                        localizations.phoneNumber,
                        beneficiaryProfile.phoneNumber,
                        Icons.phone_outlined,
                        AppColors.primary600),
                    _buildInfoTile(localizations.address,
                        beneficiaryProfile.address, Icons.home_outlined, AppColors.slate600),
                    _buildInfoTile(localizations.job, beneficiaryProfile.job,
                        Icons.work_outlined, AppColors.indigo700),
                    _buildInfoTile(
                        localizations.monthlyIncome,
                        '${beneficiaryProfile.monthlyIncome} SYP',
                        Icons.attach_money_outlined,
                        AppColors.green),
                    _buildInfoTile(
                        localizations.medicalHistory,
                        beneficiaryProfile.medicalHistory ??
                            localizations.notAvailable,
                        Icons.medical_information_outlined,
                        Colors.blue),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    return const Center(child: Text("No profile data available."));
  }

  // Helper function to build a colorful info tile for the main screen
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
                      color: AppColors.slate800,
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

  Widget _buildAnimatedScreen(
      {required Widget child,
        required Animation<double> slideAnimationValue,
        required Animation<double> scaleAnimationValue,
        required Animation<double> borderRadiusAnimationValue,
        required double drawerActualWidth,
        required bool isRtl,
        required bool isDarkTheme,
        bool isMirror = false,
        Animation<double>? opacityAnimation}) {

    const double drawerScreenSpacing = -30.0;

    return AnimatedBuilder(
      animation: _drawerAnimationController,
      builder: (context, _) {
        double rawSlide = slideAnimationValue.value * drawerActualWidth;
        double effectiveSlide;

        if (isMirror) {
          double mirrorOffsetFactor = 4;
          rawSlide = slideAnimationValue.value * (drawerActualWidth * mirrorOffsetFactor);
          effectiveSlide = (isRtl ? -1 : 1) * (rawSlide - (drawerScreenSpacing * slideAnimationValue.value * 0.5));
        } else {
          effectiveSlide = (isRtl ? -1 : 1) * (rawSlide - (drawerScreenSpacing * slideAnimationValue.value));
        }

        if (!isRtl && effectiveSlide < 0) effectiveSlide = 0;
        if (isRtl && effectiveSlide > 0) effectiveSlide = -312;

        // --- Border Logic ---
        Color borderColor = Colors.transparent;
        if (_drawerAnimationController.value > 0.1) {
          borderColor = isDarkTheme ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.1);
        }

        // --- Shadow Logic  ---
        List<BoxShadow> activeShadows = [];
        if (!isMirror && _drawerAnimationController.value > 0.1) {
          activeShadows = [
            BoxShadow(
              color: Colors.black.withOpacity(0.12 * _drawerAnimationController.value),
              blurRadius: 7.0 * _drawerAnimationController.value,
              spreadRadius: 0.5 * _drawerAnimationController.value,
              offset: Offset(isRtl ? -3.0 : 3.0, 3.0),
            ),
          ];
        }

        return Transform(
          alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
          transform: Matrix4.identity()
            ..translate(effectiveSlide)
            ..scale(scaleAnimationValue.value),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadiusAnimationValue.value),
            child: Opacity(
              opacity: opacityAnimation?.value ?? 1.0,
              child: Container(
                  decoration: BoxDecoration(
                    gradient: isDarkTheme ? AppColors.darkGradient : AppColors.lightGradient,
                    borderRadius: BorderRadius.circular(borderRadiusAnimationValue.value),
                    border: Border.all(
                      color: borderColor,
                      width: 5.0,
                    ),
                    boxShadow: activeShadows,
                  ),
                  child: child),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final drawerActualWidth = screenWidth * _drawerWidthFraction;
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;

    final settingsState = context.watch<SettingsCubit>().state;
    final themeMode = settingsState is SettingsLoaded ? settingsState.themeMode : ThemeMode.system;
    final isDark = themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            MediaQuery.of(context).platformBrightness == Brightness.dark);

    return BlocProvider<GetBeneficiaryProfileCubit>.value(
      value: _getBeneficiaryProfileCubit,
      child: BlocBuilder<GetBeneficiaryProfileCubit, GetBeneficiaryProfileState>(
        builder: (context, profileState) {
          bool isDrawerOpen = (_drawerAnimationController.status == AnimationStatus.completed || _drawerAnimationController.status == AnimationStatus.forward);
          ProfileScreen.profileScreenKey; // Associate the key with this build context

          Color baseScreenBackgroundColor = isDark ? AppColors.slate900 : AppColors.slate200;

          Widget profileContent = _buildProfileContent(context, profileState);

          return Scaffold(
            backgroundColor: baseScreenBackgroundColor,
            body: Stack(
              children: [
                ProfileDrawer(
                  drawerWidth: drawerActualWidth,
                  contentFadeAnimation: CurvedAnimation(parent: _drawerAnimationController, curve: const Interval(0.3, 1.0)),
                  beneficiaryProfileCubit: _getBeneficiaryProfileCubit, // Pass cubit to drawer
                  isDrawerOpen: isDrawerOpen, // Pass drawer state
                ),

                _buildAnimatedScreen(
                  child: IgnorePointer(child: profileContent),
                  slideAnimationValue: Tween<double>(begin: 0, end: isRtl ? -0.25 : 0.25).animate(_drawerAnimationController),
                  scaleAnimationValue: _mirrorScreenScaleAnimation,
                  borderRadiusAnimationValue: _mainScreenBorderRadiusAnimation,
                  opacityAnimation: _mirrorScreenOpacityAnimation,
                  drawerActualWidth: drawerActualWidth,
                  isRtl: isRtl,
                  isDarkTheme: isDark,
                  isMirror: true,
                ),

                GestureDetector(
                  onTap: () {
                    if (isDrawerOpen) {
                      _toggleDrawer();
                    }
                  },
                  onHorizontalDragUpdate: (details) {
                    if (_drawerAnimationController.isAnimating) return;
                    const int sensitivity = 8;
                    if (isDrawerOpen) {
                      if ((isRtl && details.delta.dx > sensitivity) || (!isRtl && details.delta.dx < -sensitivity)) {
                        _toggleDrawer();
                      }
                    } else {
                      if ((isRtl && details.delta.dx < -sensitivity) || (!isRtl && details.delta.dx > sensitivity)) {
                        _toggleDrawer();
                      }
                    }
                  },
                  child: AbsorbPointer(
                    absorbing: isDrawerOpen,
                    child: _buildAnimatedScreen(
                      child: profileContent,
                      slideAnimationValue: _mainScreenSlideAnimation,
                      scaleAnimationValue: _mainScreenScaleAnimation,
                      borderRadiusAnimationValue: _mainScreenBorderRadiusAnimation,
                      drawerActualWidth: drawerActualWidth,
                      isRtl: isRtl,
                      isDarkTheme: isDark,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, bool isDark, AppLocalizations localizations) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(LucideIcons.menu, color: isDark ? Colors.white : AppColors.slate800),
        onPressed: () {
          _toggleDrawer();
        },
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: isDark ? Colors.white : AppColors.slate800),
    );
  }

  Widget _buildProfileHeader(
      String firstName, String lastName, String avatarUrl, AppLocalizations localizations, bool isDark) {
    String displayName = (firstName.isNotEmpty || lastName.isNotEmpty)
        ? '$firstName $lastName'.trim()
        : localizations.profileUserNamePlaceholder;

    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(avatarUrl),
          backgroundColor: isDark ? AppColors.slate700 : AppColors.slate300,
        ).animate().fadeIn(duration: 300.ms).scale(delay: 100.ms),
        const SizedBox(height: 16),
        Text(
          displayName,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : AppColors.slate800),
        ),
        // Removed email display, if you need it, add it back with actual data
      ],
    );
  }
}
