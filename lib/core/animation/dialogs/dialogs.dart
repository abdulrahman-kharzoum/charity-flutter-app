import 'package:flutter/material.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/l10n/app_localizations.dart'; // Import AppLocalizations

void loadingDialog({
  required BuildContext context,
  required Size mediaQuery,
  String title = '',
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(color: AppColors.primaryColor),
              SizedBox(height: mediaQuery.height / 90),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
  );
}

void internetToast({required BuildContext context}) {
  final l10n = AppLocalizations.of(context)!;
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(l10n.noInternetConnection)));
}

void serverToast({required BuildContext context}) {
  final l10n = AppLocalizations.of(context)!;
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(l10n.serverIsDown)));
}

void internetDialog({required BuildContext context, required Size mediaQuery}) {
  final l10n = AppLocalizations.of(context)!;
  showDialog(
    context: context,
    barrierDismissible: false,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.white70,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wifi_off, size: 60, color: AppColors.primaryColor),
              const SizedBox(height: 20),
              Text(
                l10n.internetConnectionFailed,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
  );
}

void errorDialog({required BuildContext context, required String text}) {
  final l10n = AppLocalizations.of(context)!;
  const textStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: AppColors.dark,
          title: Text(l10n.errorTitle, textAlign: TextAlign.center,),
          content: Text(text, textAlign: TextAlign.center,),
          actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  AppColors.primaryColor.withOpacity(0.1),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(l10n.okButton, style: textStyle),
            ),
          ],
        ),
  );
}

void successDialog({required BuildContext context, required String text}) {
  final l10n = AppLocalizations.of(context)!;
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: Text(l10n.successTitle, textAlign: TextAlign.center,),
          content: Text(text, textAlign: TextAlign.center,),
          actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.green.withOpacity(0.1),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(l10n.okButton),
            ),
          ],
        ),
  );
}

void confirmationDialog({
  required BuildContext context,
  required String title,
  required String content,
  required VoidCallback onConfirm,
  required VoidCallback onCancel,
  required String confirmText,
  required String cancelText,
}) {
  final l10n = AppLocalizations.of(context)!;
  const textStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.dark,
      title: Text(title, textAlign: TextAlign.center,),
      content: Text(content, textAlign: TextAlign.center,),
      actions: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              AppColors.primaryColor.withOpacity(0.1),
            ),
          ),
          onPressed: onCancel,
          child: Text(cancelText, style: textStyle),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              AppColors.primaryColor.withOpacity(0.1),
            ),
          ),
          onPressed: onConfirm,
          child: Text(confirmText, style: textStyle),
        ),
      ],
    ),
  );
}

void warningDialog({
  required BuildContext context,
  required String title,
  required String content,
  required VoidCallback onConfirm,
  required VoidCallback onCancel,
  required String confirmText,
  required String cancelText,
}) {
  final l10n = AppLocalizations.of(context)!;
  const textStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.dark,
      title: Text(title, textAlign: TextAlign.center,),
      content: Text(content, textAlign: TextAlign.center,),
      actions: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              AppColors.primaryColor.withOpacity(0.1),
            ),
          ),
          onPressed: onCancel,
          child: Text(cancelText, style: textStyle),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              AppColors.primaryColor.withOpacity(0.1),
            ),
          ),
          onPressed: onConfirm,
          child: Text(confirmText, style: textStyle),
        ),
      ],
    ),
  );
}
