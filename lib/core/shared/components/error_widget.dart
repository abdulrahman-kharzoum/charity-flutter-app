import 'package:flutter/material.dart';
import 'package:charity/l10n/app_localizations.dart'; // Import AppLocalizations

// ignore: must_be_immutable
class ShowErrorWidget extends StatelessWidget {
  ShowErrorWidget({super.key, required this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!; // Get AppLocalizations instance
    return Center(
      child: Column(
        children: [
          Text(l10n.anErrorHappened), // Use localized string
          SizedBox(height: 20),
          FilledButton.icon(
            onPressed: onPressed,
            icon: const Icon(Icons.add),
            label: Text(l10n.tryAgain), // Use localized string
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
