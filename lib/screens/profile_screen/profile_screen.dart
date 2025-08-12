import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart'; // Keep for other animations if needed
import 'package:charity/cubits/profile_cubit/profile_cubit.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/widgets/profile_drawer.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

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

  // TextEditingControllers for form fields
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _phoneController;

  final double _drawerWidthFraction = 0.75;
  final double _screenScaleMin = 0.8;
  final Duration _animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _phoneController = TextEditingController();

    _drawerAnimationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );

    _mainScreenSlideAnimation = Tween<double>(begin: 0.0, end: 1.0) // 0 = closed, 1 = open
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));
    _mainScreenScaleAnimation = Tween<double>(begin: 1.0, end: _screenScaleMin)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));
    _mainScreenBorderRadiusAnimation = Tween<double>(begin: 0.0, end: 24.0)
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));

    // Animations for the "mirror" effect
    _mirrorScreenScaleAnimation = Tween<double>(begin: _screenScaleMin - 0.05, end: _screenScaleMin - 0.1) // Slightly smaller than main scaled screen
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: Curves.easeOut));
    _mirrorScreenOpacityAnimation = Tween<double>(begin: 0.0, end: 0.5) // Fade in
        .animate(CurvedAnimation(parent: _drawerAnimationController, curve: const Interval(0.0, 0.7, curve: Curves.easeOut)));


    // Listen to ProfileCubit state for drawer and data
    // It's often cleaner to handle controller text updates in BlocListener
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        // Initial data load and drawer state handling
        final profileCubit = context.read<ProfileCubit>();
        _handleProfileStateChanges(profileCubit.state); // Initial state
        profileCubit.stream.listen(_handleProfileStateChanges);

        final initialProfileState = profileCubit.state;
        if (initialProfileState is ProfileInitial ||
            (initialProfileState is ProfileCurrentState &&
                initialProfileState.userProfile == null &&
                !initialProfileState.isLoadingProfile)) {
          profileCubit.fetchUserProfileData();
        }
      }
    });
  }

  void _handleProfileStateChanges(ProfileState state) {
    if (!mounted) return;

    if (state is ProfileCurrentState) {
      // Update controllers if the text is different (prevents cursor jumping)
      if (_firstNameController.text != state.firstName) {
        _firstNameController.text = state.firstName;
      }
      if (_lastNameController.text != state.lastName) {
        _lastNameController.text = state.lastName;
      }
      if (_phoneController.text != state.phone) {
        _phoneController.text = state.phone;
      }

      if (state.isDrawerOpen && _drawerAnimationController.isDismissed) {
        _drawerAnimationController.forward();
      } else if (!state.isDrawerOpen && (_drawerAnimationController.isCompleted || _drawerAnimationController.isAnimating)) {
        _drawerAnimationController.reverse();
      }
    } else if (state is ProfileLoaded) {
      if (_firstNameController.text != state.firstName) {
        _firstNameController.text = state.firstName;
      }
      if (_lastNameController.text != state.lastName) {
        _lastNameController.text = state.lastName;
      }
      if (_phoneController.text != state.phone) {
        _phoneController.text = state.phone;
      }
      // Handle drawer based on ProfileLoaded's isDrawerOpen if it has it
      // Or ensure ProfileCubit always emits ProfileCurrentState for drawer status
      final profileCubit = context.read<ProfileCubit>();
      final currentMainState = profileCubit.state is ProfileCurrentState ? profileCubit.state as ProfileCurrentState : null;

      if (currentMainState != null) {
        if (currentMainState.isDrawerOpen && _drawerAnimationController.isDismissed) {
          _drawerAnimationController.forward();
        } else if (!currentMainState.isDrawerOpen && (_drawerAnimationController.isCompleted || _drawerAnimationController.isAnimating)) {
          _drawerAnimationController.reverse();
        }
      }
    }
  }


  @override
  void dispose() {
    _drawerAnimationController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Widget _buildProfileContent(BuildContext context, ProfileState profileState) {
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
      currentIsEditing = profileState.isEditing;

      if (profileState.isLoadingProfile && profileState.firstName.isEmpty) { // Or check controller.text
        return const Center(child: CircularProgressIndicator());
      }
      if (profileState.error != null) {
        return Center(child: Text('Error: ${profileState.error}'));
      }
    } else if (profileState is ProfileLoaded) {
      currentIsEditing = profileState.isEditing;
    }
    else if (profileState is ProfileInitial) {
      return const Center(child: CircularProgressIndicator());
    }


    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, isDark, localizations),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildProfileHeader(
                      _firstNameController.text,
                      _lastNameController.text,
                      avatarUrl,
                      localizations,
                      isDark),
                  const SizedBox(height: 24),
                  _buildEditToggle(context, currentIsEditing, localizations, isDark),
                  const SizedBox(height: 24),
                  ..._buildFormFields(context, currentIsEditing, localizations, isDark),

                ],
              ),
            ),
          ),
        ],
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
        // Apply shadow only to the main screen, not the mirror, and only when the drawer is somewhat open.
        if (!isMirror && _drawerAnimationController.value > 0.1) {
          activeShadows = [
            BoxShadow(
              // Animate shadow opacity with drawer opening for a smoother effect
              color: Colors.black.withOpacity(0.12 * _drawerAnimationController.value),
              // Animate blurRadius with drawer opening
              blurRadius: 7.0 * _drawerAnimationController.value, // Adjusted blur
              // Animate spreadRadius slightly if desired
              spreadRadius: 0.5 * _drawerAnimationController.value,
              // Offset the shadow slightly. Adjust X for RTL.
              offset: Offset(isRtl ? -3.0 : 3.0, 3.0), // Adjusted offset
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
                    border: Border.all( // Your existing border
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

    // Determine theme for background
    final settingsState = context.watch<SettingsCubit>().state;
    final themeMode = settingsState is SettingsLoaded ? settingsState.themeMode : ThemeMode.system;
    final isDark = themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            MediaQuery.of(context).platformBrightness == Brightness.dark);


    return BlocBuilder<ProfileCubit, ProfileState>(
      // buildWhen: (prev, curr) => (prev is ProfileCurrentState && curr is ProfileCurrentState && prev.isDrawerOpen != curr.isDrawerOpen) ||
      //                             (prev.runtimeType != curr.runtimeType),
      builder: (context, profileState) {
        bool isDrawerOpen = false;
        if (profileState is ProfileCurrentState) {
          isDrawerOpen = profileState.isDrawerOpen;
        }


        Color baseScreenBackgroundColor = isDark ? AppColors.slate900 : AppColors.slate200;

        Widget profileContent = _buildProfileContent(context, profileState);

        return Scaffold(
          backgroundColor: baseScreenBackgroundColor, // This will be visible behind the scaled screens
          body: Stack(
            children: [
              // Drawer
              ProfileDrawer(
                drawerWidth: drawerActualWidth,
                contentFadeAnimation: CurvedAnimation(parent: _drawerAnimationController, curve: const Interval(0.3, 1.0)),
              ),

              // 2. Mirror Screen (Behind main screen, appears when drawer opens)
              _buildAnimatedScreen(
                child: IgnorePointer(child: profileContent), // Ignore pointer events for the mirror
                slideAnimationValue: Tween<double>(begin: 0, end: isRtl ? -0.25 : 0.25).animate(_drawerAnimationController), // Static or slightly different slide
                scaleAnimationValue: _mirrorScreenScaleAnimation,
                borderRadiusAnimationValue: _mainScreenBorderRadiusAnimation, // Can use same radius or different
                opacityAnimation: _mirrorScreenOpacityAnimation,
                drawerActualWidth: drawerActualWidth,
                isRtl: isRtl,
                isDarkTheme: isDark,
                isMirror: true,
              ),

              GestureDetector(
                onTap: () {
                  if (isDrawerOpen) {
                    context.read<ProfileCubit>().closeDrawer();
                  }
                },
                onHorizontalDragUpdate: (details) {

                  if (_drawerAnimationController.isAnimating) return;
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
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, bool isDark, AppLocalizations localizations) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(LucideIcons.menu, color: isDark ? Colors.white : AppColors.slate800),
        onPressed: () {
          context.read<ProfileCubit>().toggleDrawer();
        },
      ),
      // title: Text(localizations.profileTitle), // Add a title if you want
      backgroundColor: Colors.transparent, // AppBar background will be part of the gradient
      elevation: 0,
      iconTheme: IconThemeData(color: isDark ? Colors.white : AppColors.slate800),
      // ... other app bar properties
    );
  }

  Widget _buildProfileHeader(
      String firstName, String lastName, String avatarUrl, AppLocalizations localizations, bool isDark) {
    String displayName = (firstName.isNotEmpty || lastName.isNotEmpty)
        ? '$firstName $lastName'.trim()
        : localizations.profileUserNamePlaceholder; // Provide a default like "User"

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
        Text(
          'john.doe@example.com', // Replace with actual email if available
          style: TextStyle(fontSize: 16, color: isDark ? AppColors.slate400 : AppColors.slate600),
        ),
      ],
    );
  }

  Widget _buildEditToggle(BuildContext context, bool isEditing, AppLocalizations localizations, bool isDark) {
    return ElevatedButton.icon(
      icon: Icon(isEditing ? Icons.done : Icons.edit, size: 18),
      label: Text(isEditing ? localizations.saveChanges : localizations.editProfile),
      onPressed: () {
        final cubit = context.read<ProfileCubit>();
        if (isEditing) {
          cubit.saveProfile(); // This will also toggle isEditing back in the cubit
        } else {
          cubit.toggleEdit();
        }
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: isDark ? AppColors.primaryBlue : Colors.white,
        backgroundColor: isDark ? Colors.white.withOpacity(0.1) : AppColors.primaryBlue,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  List<Widget> _buildFormFields(
      BuildContext context, bool isEditing, AppLocalizations localizations, bool isDark) {
    final profileCubit = context.read<ProfileCubit>();
    TextStyle fieldTextStyle = TextStyle(color: isDark ? Colors.white : AppColors.slate800);
    InputDecoration fieldDecoration(String label) {
      return InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: isDark ? AppColors.slate300 : AppColors.slate600),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: isDark ? AppColors.slate600 : AppColors.slate400),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryBlue, width: 2),
        ),
        // fillcolor, filled might be useful for a different style
      );
    }

    return [
      TextFormField(
        controller: _firstNameController,
        enabled: isEditing,
        decoration: fieldDecoration(localizations.firstName),
        style: fieldTextStyle,
        onChanged: (value) => profileCubit.updateFirstName(value), // Still update cubit
      ),
      const SizedBox(height: 16),
      TextFormField(
        controller: _lastNameController,
        enabled: isEditing,
        decoration: fieldDecoration(localizations.lastName),
        style: fieldTextStyle,
        onChanged: (value) => profileCubit.updateLastName(value),
      ),
      const SizedBox(height: 16),
      TextFormField(
        controller: _phoneController,
        enabled: isEditing,
        decoration: fieldDecoration(localizations.phone),
        keyboardType: TextInputType.phone,
        style: fieldTextStyle,
        onChanged: (value) => profileCubit.updatePhone(value),
      ),
    ];
  }

  // Widget _buildSaveButton(BuildContext context, AppLocalizations localizations) {
  //   // This button might be redundant if the "Done" part of _buildEditToggle handles saving.
  //   // If you want a separate save button when in editing mode:
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 24.0),
  //     child: ElevatedButton(
  //       child: Text(localizations.saveChanges), // e.g., "Save Profile"
  //       onPressed: () {
  //         context.read<ProfileCubit>().saveProfile();
  //       },
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: AppColors.teal700, // Example color
  //         foregroundColor: Colors.white,
  //         minimumSize: const Size(double.infinity, 50),
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //       ),
  //     ),
  //   );
  // }
}
