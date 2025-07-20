import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class Validate {
  final BuildContext context;
  final AppLocalizations l10n;

  Validate({required this.context, required this.l10n});

  String? password;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailRegex.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter your password';
    }

    if (password.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateRePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  // String? validatePhoneNumber(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter a phone number';
  //   }
  //   final phoneRegex = RegExp(r'^[0-9]{10}$');
  //   if (!phoneRegex.hasMatch(value)) {
  //     return 'Invalid phone number';
  //   }
  //   return null;
  // }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    if (value.length < 4) {
      return 'Username must be at least 4 characters';
    }
    return null;
  }
  String? validateSyrianPhoneNumber(String? nationalNumber) {
    if (nationalNumber == null || nationalNumber.isEmpty) {
      return l10n.loginValidationPhoneNumberRequired;
    }
    // The IntlPhoneField's inputFormatters already handle digitsOnly and length.
    // These server as secondary checks or if formatters are bypassed.
    if (!RegExp(r'^[0-9]+$').hasMatch(nationalNumber)) {
      // This case should ideally not be hit if FilteringTextInputFormatter.digitsOnly is used
      return l10n.loginValidationPhoneNumberInvalid; // Add this to l10n (e.g., "Invalid characters in phone number.")
    }
    if (!nationalNumber.startsWith('9')) {
      return l10n.loginValidationPhoneNumberStartsWith9;
    }
    if (nationalNumber.length != 9) {
      return l10n.loginValidationPhoneNumberLength;
    }
    return null;
  }
  String? validateUserLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your last name';
    }
    return null;
  }

  String? validateUserFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your first name';
    }
    return null;
  }

  String? validateSearch(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter at least one word';
    }
    return null;
  }
}
