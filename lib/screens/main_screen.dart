// lib/screens/main_screen.dart
import 'package:flutter/material.dart';
import 'package:charity/screens/home/home_screen.dart';
import 'package:charity/screens/my_requests/my_requests_screen.dart';
import 'package:charity/screens/aids_screen/aids_screen.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/screens/settings_screen/settings_screen.dart'; // For settings navigation

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Define titles for each screen
  List<String> _getAppBarTitles(AppLocalizations l10n) {
    return [
      l10n.homeScreenTitle, // From HomeScreen's original AppBar
      l10n.myRequestsTitle, // From MyRequestsScreen's AppBar
      l10n.availableAidsTitle, // From AidsScreen's AppBar
    ];
  }

  // Define leading widget (settings icon for all screens)
  Widget _getLeadingWidget(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings_outlined, color: AppColors.white, size: 28),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
      },
    );
  }

  // Define actions (notification icon for all screens)
  List<Widget> _getActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.notifications_outlined, color: AppColors.white, size: 28),
        onPressed: () {
          // TODO: Implement notifications action for all screens
          // You might want to navigate to a common notifications screen or show a dialog
        },
      ),
      const SizedBox(width: 4), // Consistent spacing
    ];
  }


  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenContent(),
    MyRequestsScreen(),
    AidsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final appBarTitles = _getAppBarTitles(l10n);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary500, // Consistent AppBar color
        elevation: 0, // Consistent elevation
        leading: _getLeadingWidget(context), // Leading icon is now consistent
        title: Text(
          appBarTitles[_selectedIndex],
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Amiri', // Or your desired font
          ),
        ),
        centerTitle: true,
        actions: _getActions(context), // Actions are now consistent
        automaticallyImplyLeading: false, // Set to false if leading is always present
      ),
      body: IndexedStack( // Using IndexedStack to preserve state of children
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ... your existing BottomNavigationBar setup ...
        backgroundColor: AppColors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            label: l10n.bottomNavHome,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list_alt_outlined),
            activeIcon: const Icon(Icons.list_alt),
            label: l10n.bottomNavMyRequests,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.volunteer_activism_outlined),
            activeIcon: const Icon(Icons.volunteer_activism),
            label: l10n.bottomNavAids,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary500,
        unselectedItemColor: AppColors.slate500,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
