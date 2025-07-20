import 'package:flutter/material.dart';
import 'package:charity/theme/color.dart';

void showSnackBar(BuildContext context, String messageText) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        messageText,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      duration: const Duration(seconds: 2),
    ),
  );
}

void showErrorSnackBar(BuildContext context, String messageText) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        messageText,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.darkRed,
      duration: const Duration(seconds: 2),
    ),
  );
}
