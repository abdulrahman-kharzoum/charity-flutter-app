// lib/screens/home/home_screen.dart
import 'dart:async';
import 'package:charity/screens/my_requests/my_requests_screen.dart';
import 'package:flutter/material.dart';
// If you are using SVG files, uncomment the line below and ensure you have the flutter_svg package
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:charity/theme/color.dart'; // Make sure this path is correct
import 'package:charity/l10n/app_localizations.dart'; // Make sure this path is correct

// Helper class for Image Properties
class ImageAssetConfig {
  final String path;
  final double width;
  final double? height;
  final BoxFit fit;
  final double opacity;
  final Alignment alignment;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  ImageAssetConfig({
    required this.path,
    required this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.opacity = 0.7,
    this.alignment = Alignment.center,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2; // Default to Home
  int _currentCarouselPage = 0;
  late PageController _pageController;
  Timer? _timer;

  // Replace with your actual image URLs or asset paths
  final List<String> _imageUrls = [
    "https://lh3.googleusercontent.com/aida-public/AB6AXuD2s8VWEpKcV1K9a9BqOd52j8-SP0FGYKDlmoC9xAGaDr0p3gb8NIjv8fRJb8xWNjEFD-FDZxdISYu4V5Pzo_NKqdm4bELj1TZjtCn8PUSf5DwZiBAmIKwHiVtgKI9o5QyeTYUogAMPUDiwwm_2ORmxb8MgPNFdVJ459MI0FDjyu08fZwI9qxhgU016d93lPDF346gYDOv0halNR8WtxbCBMNauIfQaIgMlQi5rR-xn6hxhBAyYXoXJ_n5NLLo1hKW-gmD4X_8Sai0k",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuC5LGKxZF3C5yPZN6J9dtjz-jKTCnz7Vky2UfMMYaxiocOeBEJbLVtVFmUoz6QBGZ7zn3iq86piURZ9Kn9GYxjPvM1a5xiNcCbDFP8-v7z7_wYv6BFW_DMtbSnN0ZpYnshwNkEhNUzv13YwjWPDiRTfOtJebelNhh61NGxHZvqPwBtzVoZcGsIv8Mbvy-kgNofJZ8MrahAHp63a37wwddwb-p1Xy3lXkxY7FABhRGgAyxQlvKX3mXbqv4iNnBS2EVyDIF8w9qZvnYh3",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuAfnxHG2gWtbUZ3qeBchjLlCgiSl0pFBYNCbg7li95Lp3tKm2f1AVBXy47ZA0skgSGczL1_x9WsyOWatMVC_3osGFGPIEwRKwcbvqQTZ1fcLpxITXgfdn1diB3XyDmS2EXdk_RpQTpC3OZdlC33u6nPAphn_eaicUTtinklD9fKagUHkvlTlfj5rij_NA_hpUVcPIsQmnsGI_UXyPJgRXo7UQ0MsgTwNUrjXaZ1gGQM8s36wJbwKdb2yeB6e0guyTReK8i6OwctFAyM",
    "https://lh3.googleusercontent.com/aida-public/AB6AXuCf2ktVQ9njbRLrJWTwVzfC0AimJ_Y52z5s66jcdqjJO2ZzS4tZlzU5kDkeQYp8ViX5Y8bPxzBa93CS8xQJSUN0RkfQhU_LIA7agYHNfoBIP41MiV0tGjlvAr_z9B-3xvfrtbpVI6Q-QzLdMPn7KTPimQSsMiG-GxxTpHCp5KQPvI6Pl2uQ7VAVLgAaGIFX3pM9innVIbExoGCsPN_GrN1zn2QRDO7Z4rYz7QPe046TLyEkg9iZT1LM-reiGva-39MaoGrb-LhAKCfb",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentCarouselPage);
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    if (_imageUrls.isEmpty) return;
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_imageUrls.length <= 1) {
        timer.cancel();
        return;
      }
      int nextPage = _currentCarouselPage + 1;
      if (nextPage >= _imageUrls.length) {
        nextPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate based on index
    if (index == 1 || index == 2) { // Navigate to RequestsScreen for 'Help' or 'Home'
      // Assuming RequestsScreen is the intended destination for 'Help' (index 1) and 'Home' (index 2 can be adjusted if Home has a different screen)
      // If 'Home' should stay on HomeScreen, you might adjust the condition to `if (index == 1)`
      // and handle index 2 (Home) separately if it's just to re-render or stay.
      // For now, let's assume index 1 (Help) and index 2 (Home, if it leads to a request-like view) go to RequestsScreen.
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyRequestsScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textDirection = Directionality.of(context);

    return Directionality(
      textDirection: textDirection,
      child: Scaffold(
        backgroundColor: AppColors.slate100,
        appBar: AppBar(
          backgroundColor: AppColors.primary500,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.settings_outlined, color: AppColors.white, size: 28),
            onPressed: () { /* TODO: Settings action */ },
          ),
          title: Text(
            l10n.homeScreenTitle,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_outlined, color: AppColors.white, size: 28),
              onPressed: () { /* TODO: Notifications action */ },
            ),
            const SizedBox(width: 4),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageCarousel(l10n),
              const SizedBox(height: 10),
              _buildServiceSections(context, l10n),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 12.0),
                child: Text(
                  l10n.homeQuickAccess,
                  style: const TextStyle(
                    color: AppColors.slate900,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lexend',
                  ),
                ),
              ),
              _buildQuickAccessGrid(context, l10n),
              const SizedBox(height: 20),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(l10n),
      ),
    );
  }

  Widget _buildImageCarousel(AppLocalizations l10n) {
    if (_imageUrls.isEmpty) {
      return SizedBox(
          height: 170, child: Center(child: Text(l10n.homeNoImages)));
    }
    return Padding(
      padding:
      const EdgeInsets.only(top: 20.0, left: 16, right: 16, bottom: 10),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _imageUrls.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentCarouselPage = page;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(_imageUrls[index]),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) {
                        // Optionally, return a placeholder widget on error
                        // print('Error loading image: ${_imageUrls[index]} $exception');
                      },
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          if (_imageUrls.length > 1) ...[
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_imageUrls.length, (idx) {
                return Container(
                  width: idx == _currentCarouselPage ? 10 : 8,
                  height: idx == _currentCarouselPage ? 10 : 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentCarouselPage == idx
                        ? AppColors.primary500
                        : AppColors.slate300,
                  ),
                );
              }),
            ),
          ]
        ],
      ),
    );
  }

  Widget _buildServiceSections(BuildContext context, AppLocalizations l10n) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        children: [
          _buildServiceRowItem(
            context: context,
            title: l10n.homeServiceDispensaryTitle,
            subtitle: l10n.homeServiceDispensarySubtitle,
            imageConfigLeft: ImageAssetConfig(
              path: "assets/images/prescription.png", // Replace with your actual asset
              width: 190,
              height: 190,
              opacity: 0.85,
              // alignment: Alignment.centerLeft,
              left: -50, // Pushes image leftwards
              top: -40,     // Pushes image downwards from the top edge of its Positioned box
            ),
            imageConfigRight: ImageAssetConfig(
              path: "assets/images/doctor.png", // Replace with your actual asset
              width: 100,
              height: 175,
              opacity: 0.7,
              alignment: Alignment.bottomRight, // Aligns to bottom-right of Positioned box
              right: -20, // Pushes image rightwards
              bottom: 0, // Pushes image downwards (from bottom, so effectively more visible at bottom)
            ),
            onTap: () {
              // TODO: Navigate to Dispensary Section
            },
          ),
          const SizedBox(height: 20),
          _buildServiceRowItem(
            context: context,
            title: l10n.homeServiceEducationTitle,
            subtitle: l10n.homeServiceEducationSubtitle,
            imageConfigLeft: ImageAssetConfig(
              path: "assets/images/education.png", // Replace with your actual asset
              width: 140,
              height: 140,
              opacity: 0.8,
              // alignment: Alignment.topLeft,
              left: -35,
              top: 20,
            ),
            imageConfigRight: ImageAssetConfig(
              path: "assets/images/books.png",
              width: 120,
              height: 120,
              opacity: 0.7,
              // alignment: Alignment.centerRight,
              right: -1,
              top: 58, // Example of vertical adjustment
            ),
            onTap: () {
              // TODO: Navigate to Education Section
            },
          ),
        ],
      ),
    );
  }

  Widget _buildServiceRowItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required ImageAssetConfig imageConfigLeft,
    required ImageAssetConfig imageConfigRight,
    required VoidCallback onTap,
    double itemHeight = 150, // Height of the main card content area
  }) {
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;

    Widget textAndArrowContent = Padding(
      padding: EdgeInsets.only(
        // Adjust padding to ensure text and arrow are well-placed within the card
        left: isRtl ? (imageConfigRight.width * 0.2 + 25) : 20, // Dynamic padding based on image
        right: isRtl ? 20 : (imageConfigLeft.width * 0.2 + 25),
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          if (isRtl) ...[

            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.slate200.withOpacity(0.7),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back_ios_new, color: AppColors.slate700, size: 16),
            ),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 18,left: 60),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.primary600,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Amiri',
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.slate500,
                      fontSize: 10,
                      height: 1.4,
                      fontFamily: 'Lexend',
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          if (!isRtl) ...[
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.slate200.withOpacity(0.7),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_forward_ios, color: AppColors.slate700, size: 16),
            ),
          ],
        ],
      ),
    );

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22.0),
      child: SizedBox( // Constrains the InkWell area
        height: itemHeight + 25, // Buffer for images extending out. Adjust as needed.
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: itemHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(22.0),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: textAndArrowContent,
            ),
            // Background Image Left
            Positioned(
              top: imageConfigLeft.top,
              bottom: imageConfigLeft.bottom,
              left: imageConfigLeft.left,
              right: imageConfigLeft.right,
              child: Align(
                alignment: imageConfigLeft.alignment,
                child: Opacity(
                  opacity: imageConfigLeft.opacity,
                  child: Image.asset(
                    imageConfigLeft.path,
                    width: imageConfigLeft.width,
                    height: imageConfigLeft.height,
                    fit: imageConfigLeft.fit,
                  ),
                ),
              ),
            ),
            // Background Image Right
            Positioned(
              top: imageConfigRight.top,
              bottom: imageConfigRight.bottom,
              left: imageConfigRight.left,
              right: imageConfigRight.right,
              child: Align(
                alignment: imageConfigRight.alignment,
                child: Opacity(
                  opacity: imageConfigRight.opacity,
                  // Change to SvgPicture.asset if using SVG
                  child: Image.asset(
                    imageConfigRight.path,
                    width: imageConfigRight.width,
                    height: imageConfigRight.height,
                    fit: imageConfigRight.fit,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessGrid(BuildContext context, AppLocalizations l10n) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      padding: const EdgeInsets.all(20), // Increased padding
      childAspectRatio: 1.20, // Adjust aspect ratio for button size
      children: [
        _buildQuickAccessButton(
          icon: Icons.medical_services_outlined,
          label: l10n.homeQuickAccessPharmacies,
          backgroundColor: AppColors.primary50,
          iconColor: AppColors.primary700,
          textColor: AppColors.primary800,
          onTap: () { /* TODO: Action */ },
        ),
        _buildQuickAccessButton(
          icon: Icons.calendar_today_outlined,
          label: l10n.homeQuickAccessAppointment,
          backgroundColor: AppColors.teal50,
          iconColor: AppColors.teal700,
          textColor: AppColors.teal800,
          onTap: () { /* TODO: Action */ },
        ),
        _buildQuickAccessButton(
          icon: Icons.people_alt_outlined,
          label: l10n.homeQuickAccessFamilyInfo,
          backgroundColor: AppColors.amber50,
          iconColor: AppColors.amber700,
          textColor: AppColors.amber800,
          onTap: () { /* TODO: Action */ },
        ),
        _buildQuickAccessButton(
          icon: Icons.menu_book_outlined,
          label: l10n.homeQuickAccessCourses,
          backgroundColor: AppColors.indigo50,
          iconColor: AppColors.indigo700,
          textColor: AppColors.indigo800,
          onTap: () { /* TODO: Action */ },
        ),
      ],
    );
  }

  Widget _buildQuickAccessButton({
    required IconData icon,
    required String label,
    required Color backgroundColor,
    required Color iconColor,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18.0), // Slightly more rounded
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 16.0), // Adjusted padding
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.12), // Softer shadow
                spreadRadius: 1,
                blurRadius: 5, // Softer blur
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: iconColor), // Slightly larger icon
            const SizedBox(height: 12),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 13.5, // Slightly larger text
                fontWeight: FontWeight.w600,
                fontFamily: 'Lexend',
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildBottomNavigationBar(AppLocalizations l10n) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            top: 8.0,
            bottom: MediaQuery.of(context).padding.bottom > 0
                ? MediaQuery.of(context).padding.bottom - 5
                : 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBottomNavItem(
                icon: Icons.list_alt_outlined,
                label: l10n.bottomNavMenu,
                index: 0),
            _buildBottomNavItem(
                icon: Icons.help_center_outlined, // This is the 'Help' button which might navigate to requests
                label: l10n.bottomNavHelp,
                index: 1),
            _buildFloatingHomeButton(index: 2, label: l10n.bottomNavHome),
            _buildBottomNavItem(
                icon: Icons.qr_code_scanner_rounded,
                label: l10n.bottomNavScan,
                index: 3),
            _buildBottomNavItem(
                icon: Icons.notifications_active_outlined,
                label: l10n.bottomNavNotifications,
                index: 4),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(
      {required IconData icon,
        required String label,
        required int index}) {
    final color =
    _selectedIndex == index ? AppColors.primary500 : AppColors.slate500;
    return Expanded(
      child: InkWell(
        onTap: () => _onItemTapped(index),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon,
                  color: color, size: _selectedIndex == index ? 28 : 26),
              const SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 10.5,
                  fontWeight: _selectedIndex == index
                      ? FontWeight.bold
                      : FontWeight.w500,
                  fontFamily: 'Lexend',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFloatingHomeButton(
      {required int index, required String label}) {
    final bool isSelected = _selectedIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => _onItemTapped(index),
        customBorder: const CircleBorder(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0, -18),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.primary500,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary300.withOpacity(0.8),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Icon(Icons.home_filled,
                    color: Colors.white, size: 30),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -8),
              child: Text(
                label, // Use the passed label
                style: TextStyle(
                  color:
                  isSelected ? AppColors.primary500 : AppColors.slate500,
                  fontSize: 10.5,
                  fontWeight:
                  isSelected ? FontWeight.bold : FontWeight.w500,
                  fontFamily: 'Lexend',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


