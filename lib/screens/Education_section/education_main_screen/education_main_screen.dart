// lib/screens/Education_section/education_main_screen.dart
import 'package:charity/screens/Education_section/all_courses_screen/all_courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Keep if child screens use Bloc

// Import your education section screens
import 'package:charity/screens/Education_section/home_screen/education_home_screen.dart';

// import 'package:charity/screens/Education_section/profile_screen/education_profile_screen.dart'; // If you have a profile tab
// import 'package:charity/screens/settings_screen/settings_screen.dart'; // If settings is a TAB, not just a pushed screen

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart'; // Your app's theme colors

// If your Education section screens need specific Cubits provided at this level
// import '../../../cubits/education/some_education_cubit.dart';

class EducationMainScreen extends StatefulWidget {
  const EducationMainScreen({super.key});

  @override
  State<EducationMainScreen> createState() => _EducationMainScreenState();
}

class _EducationMainScreenState extends State<EducationMainScreen> {
  int _selectedIndex = 0; // Local state for managing the selected tab

  // Define the widgets for each tab in the Education section
  // These are the main content areas for your tabs.
  static final List<Widget> _widgetOptions = <Widget>[
    const EduHomeScreen(),
    const AllCoursesScreen(),
    const AllCoursesScreen()


  ];

  // --- Optional: Shared AppBar Logic (like in your MainScreen example) ---
  // If you want a consistent AppBar across all Education tabs, define its properties here.
  // Otherwise, each screen in _widgetOptions can build its own AppBar.

  // Define titles for each screen if using a shared AppBar
  List<String> _getAppBarTitles(AppLocalizations l10n) {
    return [
      l10n.appName, // Title for EduHomeScreen tab
      // l10n.childrenScreenTitle,   // Title for ChildrenScreen tab (define in l10n)
      // l10n.coursesScreenTitle,    // Title for CoursesScreen tab (define in l10n)
      // Add other titles if you have more tabs and a shared AppBar
    ];
  }

  // Define a leading widget for a shared AppBar (e.g., drawer icon or back button if appropriate)
  Widget _getLeadingWidget(BuildContext context, AppLocalizations l10n) {
    // Example: Could be a menu icon if you have a drawer for the education section
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: AppColors.white), // Changed to back arrow
      onPressed: () {
        Navigator.of(context).pop(); // Standard back navigation
        // Scaffold.of(context).openDrawer(); // If you have a Drawer
      },
    );
  }
  // Define actions for a shared AppBar (e.g., notifications, search)
  List<Widget> _getActions(BuildContext context, AppLocalizations l10n) {
    return [
      IconButton(
        icon: const Icon(Icons.notifications_outlined, color: AppColors.white),
        onPressed: () {
          Navigator.pushNamed(context, '/notifications');
        },
      ),
      IconButton(
        icon: const Icon(Icons.settings_outlined, color: AppColors.white),
        onPressed: () {
          Navigator.pushNamed(context, '/settings'); // Navigate to global settings
        },
      ),
      const SizedBox(width: 4),
    ];
  }
  // --- End of Optional: Shared AppBar Logic ---


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // You generally don't push routes here if the item corresponds to a tab.
    // The IndexedStack handles showing the correct screen.
    // Pushing routes from here is more for actions that are *not* changing the main tab view,
    // like opening a modal or a separate settings screen if settings isn't a tab itself.
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    // final appBarTitles = _getAppBarTitles(l10n); // Uncomment if using shared AppBar

    return Scaffold(
      // --- Optional: Shared AppBar ---
      appBar: AppBar(
        backgroundColor: AppColors.primary500, // Or your education section's theme color
        elevation: 0,
        leading: _getLeadingWidget(context, l10n), // Uncomment if using
        title: Text(
          _getAppBarTitles(l10n)[_selectedIndex],
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Amiri', // Or your desired font
          ),
        ),
        centerTitle: true,
        actions: _getActions(context, l10n), // Uncomment if using
        // automaticallyImplyLeading: false, // Set based on your leading widget needs
      ),
      // --- End of Optional: Shared AppBar ---

      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white, // Or your theme's bottom nav background
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home_filled), // Using filled for active
            label: l10n.bottomNavHome, // General home or education home
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.people_alt_outlined),
            activeIcon: const Icon(Icons.people_alt),
            label: l10n.children, // Define in l10n
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school_outlined),
            activeIcon: const Icon(Icons.school),
            label: l10n.courses, // Define in l10n
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary500, // Your theme's selected color
        unselectedItemColor: AppColors.slate500, // Your theme's unselected color
        showUnselectedLabels: true, // Or false based on your design
        type: BottomNavigationBarType.fixed, // Or .shifting if you have more items and different styling
        onTap: _onItemTapped,
      ),
    );
  }
}
