import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:ui'; // For ImageFilter if you add blur later
import 'package:charity/cubits/profile_cubit/profile_cubit.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/widgets/profile_drawer.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
// Assuming you have a UserProfile model, if not, adjust data access
// import 'package:charity/models/user_profile_model.dart';

class ProfileScreen extends StatefulWidget {
  // Constructor can be const if context.read is moved to didChangeDependencies or build
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _borderRadiusAnimation;
  late Animation<double> _drawerContentFadeAnimation;
  late Animation<double> _bgCard1ScaleAnimation;
  late Animation<double> _bgCard1SlideAnimation;
  late Animation<double> _bgCard2ScaleAnimation;
  late Animation<double> _bgCard2SlideAnimation;

  final double _drawerWidthFraction = 0.75;
  final double _screenScaleMin = 0.8;
  final Duration _animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: _screenScaleMin)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _slideAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _borderRadiusAnimation = Tween<double>(begin: 0.0, end: 24.0)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _drawerContentFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: const Interval(0.3, 1.0, curve: Curves.easeOut)),
    );

    _bgCard1ScaleAnimation = Tween<double>(begin: 1.0, end: _screenScaleMin + 0.07)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _bgCard1SlideAnimation = Tween<double>(begin: 0.0, end: 0.65)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));

    _bgCard2ScaleAnimation = Tween<double>(begin: 1.0, end: _screenScaleMin + 0.14)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _bgCard2SlideAnimation = Tween<double>(begin: 0.0, end: 0.35)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<ProfileCubit>().stream.listen((state) {
          if (!mounted) return;
          if (state is ProfileCurrentState) {
            if (state.isDrawerOpen && _animationController.isDismissed) {
              _animationController.forward();
            } else if (!state.isDrawerOpen && (_animationController.isCompleted || _animationController.isAnimating)) {
              _animationController.reverse();
            }
          }
        });

        final initialProfileState = context.read<ProfileCubit>().state;
        if (initialProfileState is ProfileInitial ||
            (initialProfileState is ProfileCurrentState &&
                initialProfileState.userProfile == null &&
                !initialProfileState.isLoadingProfile)) {
          context.read<ProfileCubit>().fetchUserProfileData();
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildBackgroundCard({
    required Animation<double> scaleAnimation,
    required Animation<double> slideAnimation,
    required double drawerActualWidth,
    required bool isRtl,
    required Color cardColor,
    required double specificBorderRadius,
    Widget? child,
  }) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) {
        double slideValue = slideAnimation.value * drawerActualWidth;
        if (isRtl) slideValue = -slideValue;

        return Transform(
          alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
          transform: Matrix4.identity()
            ..translate(slideValue)
            ..scale(scaleAnimation.value),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(specificBorderRadius),
            child: Container(
              color: cardColor,
              child: child,
            ),
          ),
        );
      },
    );
  }

  Widget _buildProfileFormContent(BuildContext context, ProfileState profileState) {
    final localizations = AppLocalizations.of(context)!;
    final settingsState = context.watch<SettingsCubit>().state;
    final themeMode = settingsState is SettingsLoaded ? settingsState.themeMode : ThemeMode.system;
    final isDark = themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            MediaQuery.of(context).platformBrightness == Brightness.dark);

    String currentFirstName = "";
    String currentLastName = "";
    String currentPhone = "";
    bool currentIsEditing = false;
    String avatarUrl = 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face';

    if (profileState is ProfileCurrentState) {
      currentFirstName = profileState.firstName;
      currentLastName = profileState.lastName;
      currentPhone = profileState.phone;
      currentIsEditing = profileState.isEditing;
      // avatarUrl = profileState.userProfile?.avatarUrl ?? avatarUrl;

      if (profileState.isLoadingProfile && profileState.firstName.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }
      if (profileState.error != null) {
        return Center(child: Text('Error: ${profileState.error}'));
      }
    } else if (profileState is ProfileInitial) {
      return const Center(child: CircularProgressIndicator());
    }

    return AnimatedBuilder(
      animation: _borderRadiusAnimation,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
              gradient: isDark ? AppColors.darkGradient : AppColors.lightGradient,
              borderRadius: BorderRadius.circular(_borderRadiusAnimation.value),
            ),
            child: child,
          ),
        );
      },
      child: CustomScrollView(
        slivers: [
          _buildAppBar(context, isDark, localizations),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildProfileHeader(currentFirstName, currentLastName, avatarUrl, localizations, isDark),
                  const SizedBox(height: 24),
                  _buildEditToggle(context, currentIsEditing, localizations, isDark),
                  const SizedBox(height: 24),
                  ..._buildFormFields(context, currentFirstName, currentLastName, currentPhone, currentIsEditing, localizations, isDark),
                  if (currentIsEditing) _buildSaveButton(context, localizations),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final drawerActualWidth = screenWidth * _drawerWidthFraction;
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, profileState) {
        bool isDrawerOpen = false;
        if (profileState is ProfileCurrentState) {
          isDrawerOpen = profileState.isDrawerOpen;
        }

        Color baseScreenBackgroundColor = AppColors.slate900;
        Color bgCard1Color = AppColors.slate800.withOpacity(0.5);
        Color bgCard2Color = AppColors.slate700.withOpacity(0.3);

        return Scaffold(
          backgroundColor: baseScreenBackgroundColor,
          body: Stack(
            children: [
              ProfileDrawer(
                drawerWidth: drawerActualWidth,
                contentFadeAnimation: _drawerContentFadeAnimation,
                // userProfile: (profileState is ProfileCurrentState) ? profileState.userProfile : null,
              ),
              AnimatedBuilder(
                animation: _borderRadiusAnimation,
                builder: (context, _) => _buildBackgroundCard(
                  scaleAnimation: _bgCard2ScaleAnimation,
                  slideAnimation: _bgCard2SlideAnimation,
                  drawerActualWidth: drawerActualWidth,
                  isRtl: isRtl,
                  cardColor: bgCard2Color,
                  specificBorderRadius: _borderRadiusAnimation.value > 10 ? _borderRadiusAnimation.value - 8 : 8,
                ),
              ),
              AnimatedBuilder(
                animation: _borderRadiusAnimation,
                builder: (context, _) => _buildBackgroundCard(
                  scaleAnimation: _bgCard1ScaleAnimation,
                  slideAnimation: _bgCard1SlideAnimation,
                  drawerActualWidth: drawerActualWidth,
                  isRtl: isRtl,
                  cardColor: bgCard1Color,
                  specificBorderRadius: _borderRadiusAnimation.value > 5 ? _borderRadiusAnimation.value - 4 : 12,
                ),
              ),
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  double slideValue = _slideAnimation.value * drawerActualWidth;
                  if (isRtl) slideValue = -slideValue;

                  return Transform(
                    alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
                    transform: Matrix4.identity()
                      ..translate(slideValue)
                      ..scale(_scaleAnimation.value),
                    child: child,
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    if (isDrawerOpen) {
                      context.read<ProfileCubit>().closeDrawer();
                    }
                  },
                  onHorizontalDragUpdate: (details) {
                    if (_animationController.isAnimating) return;
                    const int sensitivity = 8;
                    if (isDrawerOpen) {
                      if ((isRtl && details.delta.dx > sensitivity) || (!isRtl && details.delta.dx < -sensitivity)) {
                        context.read<ProfileCubit>().closeDrawer();
                      }
                    } else {
                      if ((isRtl && details.delta.dx < -sensitivity) || (!isRtl && details.delta.dx > sensitivity)) {
                        context.read<ProfileCubit>().openDrawer();
                      }
                    }
                  },
                  child: AbsorbPointer(
                    absorbing: isDrawerOpen,
                    child: _buildProfileFormContent(context, profileState),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, bool isDark, AppLocalizations localizations) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(LucideIcons.menu, color: isDark ? AppColors.white : AppColors.slate800),
        onPressed: () => context.read<ProfileCubit>().toggleDrawer(),
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      ),
      title: Text(
        localizations.editProfile,
        style: TextStyle(color: isDark ? AppColors.white : AppColors.slate800, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: true,
    );
  }

  Widget _buildProfileHeader(String firstName, String lastName, String avatarUrl, AppLocalizations localizations, bool isDark) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(avatarUrl),
            ).animate().scale(duration: 400.ms),
            Positioned(
              bottom: 0,
              // Adjusted to be independent of screen width for better consistency
              right: -4, // Adjust this value to position the camera icon as desired relative to the avatar
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: AppColors.sky400,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 2))]),
                child: const Icon(LucideIcons.camera, color: Colors.white, size: 20),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          // FIX: Check if 'profileUserNamePlaceholder' exists in your AppLocalizations.
          // If not, provide a default string or add it to your localization files.
          (firstName.isEmpty && lastName.isEmpty)
              ? (localizations.profileUserNamePlaceholder)
              : "$firstName $lastName",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: isDark ? AppColors.white : AppColors.slate800,
          ),
        ).animate().fadeIn(delay: 200.ms),
      ],
    );
  }

  Widget _buildEditToggle(BuildContext context, bool isEditing, AppLocalizations localizations, bool isDark) {
    final profileCubit = context.read<ProfileCubit>();
    return TextButton.icon(
      onPressed: () => profileCubit.toggleEdit(),
      // FIX: Replace with valid LucideIcons or other icons
      icon: Icon(isEditing ? LucideIcons.x : LucideIcons.x,
          size: 20,
          color: isDark ? AppColors.white : AppColors.slate700),
      label: Text(isEditing ? localizations.cancel : localizations.edit,
          style: TextStyle(color: isDark ? AppColors.white : AppColors.slate700, fontWeight: FontWeight.w600)),
      style: TextButton.styleFrom(
          backgroundColor: isDark ? AppColors.slate800.withOpacity(0.6) : AppColors.white.withOpacity(0.8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          side: BorderSide(color: isDark ? AppColors.slate700 : AppColors.slate300, width: 0.5)),
    ).animate().fadeIn(delay: 300.ms);
  }

  List<Widget> _buildFormFields(
      BuildContext context, String firstName, String lastName, String phone, bool isEditing, AppLocalizations localizations, bool isDark) {
    final profileCubit = context.read<ProfileCubit>();
    return [
      _buildTextField(
        label: localizations.firstName,
        initialValue: firstName,
        isEditing: isEditing,
        isDark: isDark,
        onChanged: (value) => profileCubit.updateFirstName(value),
        iconData: LucideIcons.user,
      ),
      const SizedBox(height: 16),
      _buildTextField(
        label: localizations.lastName,
        initialValue: lastName,
        isEditing: isEditing,
        isDark: isDark,
        onChanged: (value) => profileCubit.updateLastName(value),

        iconData: LucideIcons.users,
      ),
      const SizedBox(height: 16),
      _buildTextField(
        label: localizations.phone,
        initialValue: phone,
        isEditing: isEditing,
        isDark: isDark,
        onChanged: (value) => profileCubit.updatePhone(value),
        keyboardType: TextInputType.phone,
        iconData: LucideIcons.phone,
      ),
    ].animate(interval: 100.ms).fadeIn(delay: 400.ms).slideX(begin: 0.1, duration: 300.ms);
  }

  Widget _buildTextField({
    required String label,
    required String initialValue,
    required bool isEditing,
    required bool isDark,
    required ValueChanged<String> onChanged,
    TextInputType? keyboardType,
    IconData? iconData,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: isDark ? AppColors.slate800.withOpacity(0.5) : AppColors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            if (!isDark) BoxShadow(color: AppColors.slate200.withOpacity(0.5), blurRadius: 5, offset: const Offset(0, 2))
          ]),
      child: TextFormField(
        key: ValueKey(initialValue),
        initialValue: initialValue,
        enabled: isEditing,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: TextStyle(color: isDark ? AppColors.white : AppColors.slate800, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: isDark ? AppColors.slate300 : AppColors.slate600, fontWeight: FontWeight.w500),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: iconData != null ? Icon(iconData, color: isDark ? AppColors.slate400 : AppColors.slate500, size: 20) : null,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
      ),
    );
  }

  Widget _buildSaveButton(BuildContext context, AppLocalizations localizations) {
    final profileCubit = context.read<ProfileCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: ElevatedButton.icon(
        onPressed: () => profileCubit.saveProfile(),
        // FIX: Replace 'check_circle' with a valid LucideIcon or other icon.
        icon: const Icon(LucideIcons.check, color: Colors.white), // Using 'check' as a common alternative
        label: Text(localizations.saveChanges,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.sky400,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          shadowColor: AppColors.sky400.withOpacity(0.5),
          elevation: 8,
        ),
        // FIX: Remove const from .animate() if it's causing issues,
        // or ensure the ElevatedButton itself can be const if all parameters are const.
        // For animations, typically the widget itself is not const.
      ).animate().scale(delay: 100.ms, duration: 300.ms), // .animate() usually means the widget is not const
    );
  }
}
