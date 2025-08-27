import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charity/l10n/app_localizations.dart'; // Import AppLocalizations

void showErrorDialog(BuildContext context, String errorMessage) {
  final l10n = AppLocalizations.of(context)!; // Get AppLocalizations instance
  String displayMessage = errorMessage;

  // Check for specific error messages and use localized strings
  if (errorMessage.contains("Too many attempts")) {
    // Extract the time from the error message, e.g., "1 minute 51 seconds"
    final RegExp timeRegExp = RegExp(r"after (\d+ (minute|minutes|second|seconds)( \d+ (second|seconds))?)");
    final Match? match = timeRegExp.firstMatch(errorMessage);
    if (match != null) {
      final String time = match.group(1)!;
      displayMessage = l10n.tooManyAttemptsMessage(time);
    } else {
      displayMessage = l10n.tooManyAttemptsGenericMessage;
    }
  } else {
    displayMessage = errorMessage;
  }

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: l10n.errorTitle, // Use localized string
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.9, end: 1.0).animate(anim1),
        child: FadeTransition(
          opacity: anim1,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                Icon(
                  Icons.gpp_bad_outlined,
                  color: Colors.red.shade600,
                  size: 60,
                ),
                const SizedBox(height: 10),
               Text(
                  l10n.somethingWentWrong, // Use localized string
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  displayMessage, // Use the processed displayMessage
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(l10n.ok), // Use localized string
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

