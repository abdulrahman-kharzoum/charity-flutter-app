import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF3498db); // Main blue from your theme
  static const Color primaryBlue = Color(0xFF3498db); // Explicit name
  static const Color primary50 = Color(0xFFEEF7FF);
  static const Color primary100 = Color(0xFFD9EAFF);
  static const Color primary200 = Color(0xFFBCE0FF);
  static const Color primary300 = Color(0xFF8ED0FF);
  static const Color primary400 = Color(0xFF5AB8FF);
  static const Color primary500 = Color(0xFF2D93E1); // Main primary color
  static const Color primary600 = Color(0xFF1B7ED2);
  static const Color primary700 = Color(0xFF1664AE);
  static const Color primary800 = Color(0xFF18538D);
  static const Color primary900 = Color(0xFF1A4876);
  static const Color primary950 = Color(0xFF122C4B);


  static const Color slate50 = Color(0xFFF8FAFC);
  static const Color slate100 = Color(0xFFF1F5F9); // Lighter alternative for background if needed
  static const Color slate200 = Color(0xFFE2E8F0);
  static const Color slate300 = Color(0xFFCBD5E1); // Darker alternative for borders/background
  static const Color slate400 = Color(0xFF94A3B8); // Darker for some text/icons
  static const Color slate500 = Color(0xFF64748B);
  static const Color slate600 = Color(0xFF475569); // Even darker for text
  static const Color slate700 = Color(0xFF334155);
  static const Color slate800 = Color(0xFF1E293B); // Darker for titles
  static const Color slate900 = Color(0xFF0F172A);

  static const Color teal50 = Color(0xFFF0FDFA);  // Approx
  static const Color teal700 = Color(0xFF0F766E); // Approx
  static const Color teal800 = Color(0xFF115E59); // Approx

  static const Color amber50 = Color(0xFFFFFBEB); // Approx
  static const Color amber700 = Color(0xFFB45309); // Approx
  static const Color amber800 = Color(0xFF92400E); // Approx

  static const Color indigo50 = Color(0xFFEEF2FF); // Approx
  static const Color indigo700 = Color(0xFF4338CA); // Approx
  static const Color indigo800 = Color(0xFF3730A3); // Approx

  static const Color loginFieldBackground = Colors.white;
  static const Color loginFieldBorder = Color(0xFFEFEFEF);
  static const Color loginFocusedBorder = primaryBlue;
  static const Color loginHintText = Colors.grey;
  static const Color loginLabelText = Color(0xFF4b5563);
  static const Color loginForgotPasswordText = Color(0xFF6c757d);
  static const Color loginButtonText = primaryBlue;
  static const Color loginButtonBackground = Colors.white;
  static const Color loginButtonBorder = primaryBlue;


  static const Color dark = Color(0xFF121212);
  static const Color white = Colors.white;
  static const Color gray = Colors.grey;
  static const Color lightGrey = Color(0xFFD3D3D3);
  static const darkRed = Color.fromARGB(255, 153, 0, 0);
  static const Color accentColor = Colors.amber;
  static const Color textColorDark = Colors.white;
  static const Color textColorLight = Colors.black;

  // Grayscale Colors - NEWLY ADDED
  static const Color gray50 = Color(0xFFF9FAFB);   // Very light gray (almost white)
  static const Color gray100 = Color(0xFFF3F4F6);  // Light gray
  static const Color gray200 = Color(0xFFE5E7EB);  // Light gray
  static const Color gray300 = Color(0xFFD1D5DB);  // Gray
  static const Color gray400 = Color(0xFF9CA3AF);  // Medium gray
  static const Color gray500 = Color(0xFF6B7280);  // Medium-dark gray
  static const Color gray600 = Color(0xFF4B5563);  // Dark gray
  static const Color gray700 = Color(0xFF374151);  // Darker gray
  static const Color gray800 = Color(0xFF1F2937);  // Very dark gray
  static const Color gray900 = Color(0xFF111827);  // Almost black

  static const Color textFieldFillLight = loginFieldBackground; // Use the new login field background
  static const Color textFieldFillDark = Color(0xFF2C2C2E);   // Example for dark theme

  static const splashGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.74],
    colors: [
      Color(0xFF44A5FC),
      Color(0xFF2597FD),
    ],
  );
  // --- My Requests Screen ---
  static const Color requestStatusPending = Color(0xFFF59E0B);
  static const Color requestStatusAccepted = Color(0xFF10B981);
  static const Color requestStatusRejected = Color(0xFFEF4444);

  static const Color myRequestsBackground = slate100;
  static const Color myRequestsTimelineBorder = slate300;
  static const Color myRequestsDateText = slate500;
  static const Color myRequestsDescriptionText = slate600;
  static const Color myRequestsBackButton = slate700;
  static const Color myRequestsTitleText = slate800;

  // From index.css
  static const Color sky400 = Color(0xFF38BDF8);
  static const Color purple900 = Color(0xFF581C87);

  static const Gradient darkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.slate900,
      AppColors.purple900,
      AppColors.slate900,
    ],
  );

  static const Gradient lightGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.primary50,
      AppColors.indigo50,
      Color(0xFFF5EAFC),
    ],
  );
}