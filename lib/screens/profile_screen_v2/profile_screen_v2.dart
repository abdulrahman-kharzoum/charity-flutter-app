// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:charity/cubits/profile_v2_cubit/profile_v2_cubit.dart';
// import 'package:charity/l10n/app_localizations.dart';
// import 'package:charity/models/user_profile_model.dart';
// import 'package:charity/theme/color.dart';
// import 'dart:math' as math;
//
// import '../../widgets/profile_drawer.dart';
//
// class ProfileScreenV2 extends StatefulWidget {
//   const ProfileScreenV2({super.key});
//
//   @override
//   State<ProfileScreenV2> createState() => _ProfileScreenV2State();
// }
//
// class _ProfileScreenV2State extends State<ProfileScreenV2>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _scaleAnimation;
//   late Animation<double> _slideAnimation;
//   late Animation<double> _borderRadiusAnimation;
//   late Animation<double> _drawerContentFadeAnimation;
//
//   final double _drawerWidthFraction = 0.75;
//   final double _screenScaleMin = 0.85;
//   final Duration _animationDuration = const Duration(milliseconds: 300);
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: _animationDuration,
//     );
//
//     _scaleAnimation = Tween<double>(begin: 1.0, end: _screenScaleMin)
//         .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
//     _slideAnimation = Tween<double>(begin: 0.0, end: 1.0)
//         .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
//     _borderRadiusAnimation = Tween<double>(begin: 0.0, end: 24.0)
//         .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
//     _drawerContentFadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
//         .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
//
//
//     // Listen to Cubit state to control animation
//     context.read<ProfileV2Cubit>().stream.listen((state) {
//       if (state is ProfileV2CurrentState) { // Check for the correct state type
//         if (state.isDrawerOpen) {
//           _animationController.forward();
//         } else {
//           _animationController.reverse();
//         }
//       }
//     });
//
//     // Fetch profile data when the screen is initialized
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<ProfileV2Cubit>().fetchUserProfile();
//     });
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   void _toggleDrawer() {
//     context.read<ProfileV2Cubit>().toggleDrawer();
//   }
//
//   Widget _buildMainScreenContent(BuildContext context, AppLocalizations l10n, bool isRtl, ProfileV2CurrentState profileState) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: AppBar(
//         backgroundColor: AppColors.primary900,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.menu, color: AppColors.white),
//           onPressed: _toggleDrawer,
//           tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//         ),
//         title: Text(l10n.profileV2Title, style: const TextStyle(color: AppColors.white, fontFamily: 'Lexend')),
//         centerTitle: true,
//         actions: [
//           if (profileState.isLoadingProfile)
//             const Padding(
//               padding: EdgeInsets.only(right: 16.0),
//               child: Center(child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.white))),
//             )
//           else if (profileState.error != null)
//             IconButton(
//               icon: const Icon(Icons.refresh, color: AppColors.white),
//               tooltip: "Retry loading profile",
//               onPressed: () => context.read<ProfileV2Cubit>().fetchUserProfile(),
//             )
//         ],
//       ),
//       body: Center(
//         child: profileState.isLoadingProfile
//             ? const CircularProgressIndicator(color: AppColors.primaryColor)
//             : profileState.error != null
//             ? Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Error: ${profileState.error}', style: const TextStyle(color: Colors.redAccent)),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => context.read<ProfileV2Cubit>().fetchUserProfile(),
//               child: const Text('Retry'),
//             ),
//           ],
//         )
//             : profileState.userProfile != null
//             ? Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Welcome, ${profileState.userProfile!.name}!',
//               style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColors.textColorLight),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               'Your phone: ${profileState.userProfile!.phone}',
//               style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.textColorLight),
//             ),
//             const SizedBox(height: 20),
//             Image.network(
//               'https://via.placeholder.com/300x200/4CAF50/FFFFFF?text=Welcome+${profileState.userProfile!.name.split(" ").first}',
//               height: 150,
//             ),
//             const SizedBox(height: 20),
//             Text(
//               "Swipe from ${isRtl ? 'right' : 'left'} or tap menu to open drawer.",
//               style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.gray),
//             ),
//           ],
//         )
//             : const Text('No profile data available.'),
//       ),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final drawerActualWidth = screenWidth * _drawerWidthFraction;
//     final bool isRtl = Directionality.of(context) == TextDirection.rtl;
//
//     // Use BlocBuilder to get the current state for building UI
//     return BlocConsumer<ProfileV2Cubit, ProfileV2State>(
//       listener: (context, state) {
//         // Optional: Show snackbars for errors if not handled inline
//         if (state is ProfileV2CurrentState && state.error != null && !state.isLoadingProfile) {
//           // You might already handle this inline, but can be useful for other notifications
//           // ScaffoldMessenger.of(context).showSnackBar(
//           //   SnackBar(content: Text('Error: ${state.error}'), backgroundColor: Colors.red),
//           // );
//         }
//       },
//       builder: (context, state) {
//         // Ensure state is ProfileV2CurrentState before accessing its properties
//         final currentProfileState = state is ProfileV2CurrentState
//             ? state
//             : const ProfileV2CurrentState(); // Default if state is not the expected type
//
//         bool isDrawerOpen = currentProfileState.isDrawerOpen;
//
//         return Scaffold(
//           backgroundColor: AppColors.primary900, // Or your gradient background
//           body: Stack(
//             children: [
//               // Use the new ProfileDrawer widget
//               ProfileDrawer(
//                 drawerWidth: drawerActualWidth,
//                 contentFadeAnimation: _drawerContentFadeAnimation,
//               ),
//               AnimatedBuilder(
//                 animation: _animationController,
//                 builder: (context, child) {
//                   double slideValue = _slideAnimation.value * drawerActualWidth;
//                   if (isRtl) slideValue = -slideValue;
//
//                   return Transform(
//                     alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
//                     transform: Matrix4.identity()
//                       ..translate(slideValue)
//                       ..scale(_scaleAnimation.value),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(_borderRadiusAnimation.value),
//                       child: child,
//                     ),
//                   );
//                 },
//                 child: GestureDetector(
//                   onTap: () {
//                     if (isDrawerOpen) {
//                       context.read<ProfileV2Cubit>().closeDrawer();
//                     }
//                   },
//                   onHorizontalDragUpdate: (details) {
//                     if (_animationController.isAnimating) return;
//                     const int sensitivity = 8;
//                     if (isDrawerOpen) {
//                       if ((isRtl && details.delta.dx > sensitivity) || (!isRtl && details.delta.dx < -sensitivity)) {
//                         context.read<ProfileV2Cubit>().closeDrawer();
//                       }
//                     } else {
//                       if ((isRtl && details.delta.dx < -sensitivity) || (!isRtl && details.delta.dx > sensitivity)) {
//                         context.read<ProfileV2Cubit>().openDrawer();
//                       }
//                     }
//                   },
//                   child: AbsorbPointer(
//                     absorbing: isDrawerOpen,
//                     child: _buildMainScreenContent(context, l10n, isRtl, currentProfileState),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
