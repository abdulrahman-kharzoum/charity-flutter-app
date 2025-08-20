// lib/widgets/custom_bottom_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart'; // For colors

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(top: BorderSide(color: AppColors.lightGreyBackground, width: 1.0)),
      ),
      padding: const EdgeInsets.only(bottom: 5), // Adjust for safe area if needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(
            context: context,
            icon: Icons.home_outlined, // Replace with your House icon SVG if needed
            label: l10n.home, // From app_en.arb
            index: 0,
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          _buildNavItem(
            context: context,
            icon: Icons.people_outline, // Replace with Users icon
            label: l10n.children, // From app_en.arb
            index: 1,
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          _buildNavItem(
            context: context,
            icon: Icons.video_library_outlined, // Replace with Video icon (Courses)
            label: l10n.courses, // From app_en.arb
            index: 2,
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          _buildNavItem(
            context: context,
            icon: Icons.chat_bubble_outline, // Replace with ChatCircleDots icon
            label: l10n.chat, // From app_en.arb
            index: 3,
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
          _buildNavItem(
            context: context,
            icon: Icons.settings_outlined, // Replace with Gear icon
            label: l10n.settings, // From app_en.arb
            index: 4,
            isSelected: currentIndex == 4, // This might look selected even if it pushes a new screen
            onTap: () => onTap(4),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required int index,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final color = isSelected ? AppColors.textPrimary : AppColors.textSecondary; // Example colors
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, color: color, size: 24),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 10, // HTML was text-xs
                  fontWeight: FontWeight.w500, // HTML was font-medium
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
