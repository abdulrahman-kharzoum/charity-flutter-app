import 'package:flutter/material.dart';
import 'package:charity/theme/color.dart';

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
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(const SnackBar(content: Text('No internet connection')));
}

void serverToast({required BuildContext context}) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(const SnackBar(content: Text('Server is down')));
}

void internetDialog({required BuildContext context, required Size mediaQuery}) {
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
              const Text(
                'Internet connection failed',
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
  const textStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: AppColors.dark,
          title: const Text('Error'),
          content: Text(text),
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
              child: const Text('Cancel', style: textStyle),
            ),
          ],
        ),
  );
}

void successDialog({required BuildContext context, required String text}) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Success'),
          content: Text(text),
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
              child: const Text('OK'),
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
  const textStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.dark,
      title: Text(title),
      content: Text(content),
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
  const textStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.dark,
      title: Text(title),
      content: Text(content),
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
