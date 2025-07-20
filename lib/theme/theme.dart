import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charity/theme/color.dart'; // Ensure this path is correct

// Light Theme
final ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  colorScheme: ColorScheme.light(
    primary: AppColors.primaryColor,
    onPrimary: AppColors.white,
    secondary: AppColors.accentColor,
    onSecondary: AppColors.textColorLight,
    error: Colors.redAccent,
    onError: AppColors.white,
    background: AppColors.white,
    onBackground: AppColors.textColorLight,
    surface: AppColors.white,
    onSurface: AppColors.textColorLight,
    surfaceVariant: AppColors.lightGrey.withOpacity(0.5),
    outline: AppColors.gray.withOpacity(0.5),
  ),
  scaffoldBackgroundColor: AppColors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  useMaterial3: true,
  fontFamily: 'Lexend',

  textTheme: TextTheme(
    displayLarge: GoogleFonts.lexend(fontSize: 57, fontWeight: FontWeight.w400, color: AppColors.textColorLight, letterSpacing: -0.25),
    displayMedium: GoogleFonts.lexend(fontSize: 45, fontWeight: FontWeight.w400, color: AppColors.textColorLight, letterSpacing: 0),
    displaySmall: GoogleFonts.lexend(fontSize: 36, fontWeight: FontWeight.w400, color: AppColors.textColorLight, letterSpacing: 0),
    headlineLarge: GoogleFonts.lexend(fontSize: 32, fontWeight: FontWeight.w500, color: AppColors.textColorLight, letterSpacing: 0),
    headlineMedium: GoogleFonts.lexend(fontSize: 28, fontWeight: FontWeight.w500, color: AppColors.textColorLight, letterSpacing: 0),
    headlineSmall: GoogleFonts.lexend(fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.textColorLight, letterSpacing: 0),
    titleLarge: GoogleFonts.lexend(fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.textColorLight, letterSpacing: 0.15),
    titleMedium: GoogleFonts.lexend(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textColorLight, letterSpacing: 0.15),
    titleSmall: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorLight, letterSpacing: 0.1),
    bodyLarge: GoogleFonts.lexend(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textColorLight, letterSpacing: 0.5),
    bodyMedium: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textColorLight, letterSpacing: 0.25),
    bodySmall: GoogleFonts.lexend(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColorLight.withOpacity(0.8), letterSpacing: 0.4),
    labelLarge: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryColor, letterSpacing: 0.1),
    labelMedium: GoogleFonts.lexend(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.gray, letterSpacing: 0.5),
    labelSmall: GoogleFonts.lexend(fontSize: 11, fontWeight: FontWeight.w500, color: AppColors.gray, letterSpacing: 0.5),
  ).apply(
    bodyColor: AppColors.textColorLight,
    displayColor: AppColors.textColorLight,
    fontFamily: 'Lexend',
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      textStyle: GoogleFonts.lexend(fontSize: 15, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      elevation: 2,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primaryColor,
      textStyle: GoogleFonts.lexend(fontSize: 15, fontWeight: FontWeight.w600),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primaryColor,
      side: BorderSide(color: AppColors.primaryColor.withOpacity(0.5), width: 1.5),
      textStyle: GoogleFonts.lexend(fontSize: 15, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
    ),
  ),

  iconTheme: const IconThemeData(color: AppColors.primaryColor, size: 24),

  listTileTheme: ListTileThemeData(
    iconColor: AppColors.primaryColor,
    titleTextStyle: GoogleFonts.lexend(fontSize: 16, color: AppColors.textColorLight, fontWeight: FontWeight.w500),
    subtitleTextStyle: GoogleFonts.lexend(fontSize: 14, color: AppColors.gray),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.lexend(color: AppColors.gray.withOpacity(0.8)),
    labelStyle: GoogleFonts.lexend(color: AppColors.gray),
    floatingLabelStyle: GoogleFonts.lexend(color: AppColors.primaryColor, fontWeight: FontWeight.w500),
    errorStyle: GoogleFonts.lexend(color: Colors.redAccent.shade700, fontSize: 12),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
    filled: true,
    fillColor: AppColors.textFieldFillLight,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: AppColors.lightGrey.withOpacity(0.7)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: AppColors.lightGrey.withOpacity(0.7)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.redAccent.shade700, width: 1.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.redAccent.shade700, width: 2.0),
    ),
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    foregroundColor: AppColors.white,
    elevation: 0,
    titleTextStyle: GoogleFonts.lexend(fontSize: 20, color: AppColors.white, fontWeight: FontWeight.w600),
    iconTheme: const IconThemeData(color: AppColors.white, size: 24),
    actionsIconTheme: const IconThemeData(color: AppColors.white, size: 24),
  ),

  // Corrected: Use TabBarThemeData constructor
  tabBarTheme: TabBarThemeData(
    labelColor: AppColors.primaryColor,
    unselectedLabelColor: AppColors.gray,
    labelStyle: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.bold),
    unselectedLabelStyle: GoogleFonts.lexend(fontSize: 14),
    indicator: UnderlineTabIndicator(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.5),
    ),
    indicatorSize: TabBarIndicatorSize.label,
  ),

  // Corrected: Use CardThemeData constructor
  cardTheme: CardThemeData(
    color: AppColors.white,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: AppColors.white,
    textStyle: GoogleFonts.lexend(color: AppColors.textColorLight, fontSize: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    elevation: 4,
  ),

  // Corrected: Use DialogThemeData constructor
  dialogTheme: DialogThemeData(
    backgroundColor: AppColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    titleTextStyle: GoogleFonts.lexend(color: AppColors.textColorLight, fontSize: 18, fontWeight: FontWeight.w600),
    contentTextStyle: GoogleFonts.lexend(color: AppColors.textColorLight, fontSize: 16),
    actionsPadding: const EdgeInsets.all(16.0),
  ),

  dividerTheme: DividerThemeData(
    color: AppColors.lightGrey.withOpacity(0.6),
    thickness: 1,
    space: 1,
  ),

  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: AppColors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    elevation: 4,
    modalBackgroundColor: AppColors.white,
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColors.dark.withOpacity(0.85),
    contentTextStyle: GoogleFonts.lexend(color: AppColors.white),
    actionTextColor: AppColors.primaryColor,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    elevation: 4,
  ),
);

// Dark Theme
final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primaryColor,
  colorScheme: ColorScheme.dark(
    primary: AppColors.primaryColor,
    onPrimary: AppColors.white,
    secondary: AppColors.accentColor,
    onSecondary: AppColors.textColorDark,
    error: Colors.red.shade400,
    onError: AppColors.textColorDark,
    background: AppColors.dark,
    onBackground: AppColors.textColorDark,
    surface: const Color(0xFF1E1E1E),
    onSurface: AppColors.textColorDark,
    surfaceVariant: const Color(0xFF2C2C2E),
    outline: AppColors.gray.withOpacity(0.3),
  ),
  scaffoldBackgroundColor: AppColors.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  useMaterial3: true,
  fontFamily: 'Lexend',

  textTheme: TextTheme(
    displayLarge: GoogleFonts.lexend(fontSize: 57, fontWeight: FontWeight.w400, color: AppColors.textColorDark, letterSpacing: -0.25),
    displayMedium: GoogleFonts.lexend(fontSize: 45, fontWeight: FontWeight.w400, color: AppColors.textColorDark, letterSpacing: 0),
    displaySmall: GoogleFonts.lexend(fontSize: 36, fontWeight: FontWeight.w400, color: AppColors.textColorDark, letterSpacing: 0),
    headlineLarge: GoogleFonts.lexend(fontSize: 32, fontWeight: FontWeight.w500, color: AppColors.textColorDark, letterSpacing: 0),
    headlineMedium: GoogleFonts.lexend(fontSize: 28, fontWeight: FontWeight.w500, color: AppColors.textColorDark, letterSpacing: 0),
    headlineSmall: GoogleFonts.lexend(fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.textColorDark, letterSpacing: 0),
    titleLarge: GoogleFonts.lexend(fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.textColorDark, letterSpacing: 0.15),
    titleMedium: GoogleFonts.lexend(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textColorDark, letterSpacing: 0.15),
    titleSmall: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColorDark, letterSpacing: 0.1),
    bodyLarge: GoogleFonts.lexend(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textColorDark, letterSpacing: 0.5),
    bodyMedium: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textColorDark, letterSpacing: 0.25),
    bodySmall: GoogleFonts.lexend(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textColorDark.withOpacity(0.8), letterSpacing: 0.4),
    labelLarge: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryColor, letterSpacing: 0.1),
    labelMedium: GoogleFonts.lexend(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightGrey, letterSpacing: 0.5),
    labelSmall: GoogleFonts.lexend(fontSize: 11, fontWeight: FontWeight.w500, color: AppColors.lightGrey, letterSpacing: 0.5),
  ).apply(
    bodyColor: AppColors.textColorDark,
    displayColor: AppColors.textColorDark,
    fontFamily: 'Lexend',
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      textStyle: GoogleFonts.lexend(fontSize: 15, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      elevation: 2,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primaryColor,
      textStyle: GoogleFonts.lexend(fontSize: 15, fontWeight: FontWeight.w600),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primaryColor,
      side: BorderSide(color: AppColors.primaryColor.withOpacity(0.7), width: 1.5),
      textStyle: GoogleFonts.lexend(fontSize: 15, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
    ),
  ),

  iconTheme: const IconThemeData(color: AppColors.primaryColor, size: 24),

  listTileTheme: ListTileThemeData(
    iconColor: AppColors.primaryColor,
    titleTextStyle: GoogleFonts.lexend(fontSize: 16, color: AppColors.textColorDark, fontWeight: FontWeight.w500),
    subtitleTextStyle: GoogleFonts.lexend(fontSize: 14, color: AppColors.lightGrey),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    tileColor: const Color(0xFF1E1E1E),
  ),

  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.lexend(color: AppColors.gray.withOpacity(0.7)),
    labelStyle: GoogleFonts.lexend(color: AppColors.gray),
    floatingLabelStyle: GoogleFonts.lexend(color: AppColors.primaryColor, fontWeight: FontWeight.w500),
    errorStyle: GoogleFonts.lexend(color: Colors.red.shade300, fontSize: 12),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
    filled: true,
    fillColor: AppColors.textFieldFillDark.withOpacity(0.1),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: AppColors.gray.withOpacity(0.3)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: AppColors.gray.withOpacity(0.3)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.red.shade300, width: 1.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.red.shade300, width: 2.0),
    ),
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF1E1E1E),
    foregroundColor: AppColors.white,
    elevation: 0,
    titleTextStyle: GoogleFonts.lexend(fontSize: 20, color: AppColors.white, fontWeight: FontWeight.w600),
    iconTheme: const IconThemeData(color: AppColors.white, size: 24),
    actionsIconTheme: const IconThemeData(color: AppColors.white, size: 24),
  ),

  // Corrected: Use TabBarThemeData constructor
  tabBarTheme: TabBarThemeData(
    labelColor: AppColors.primaryColor,
    unselectedLabelColor: AppColors.lightGrey,
    labelStyle: GoogleFonts.lexend(fontSize: 14, fontWeight: FontWeight.bold),
    unselectedLabelStyle: GoogleFonts.lexend(fontSize: 14),
    indicator: UnderlineTabIndicator(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.5),
    ),
    indicatorSize: TabBarIndicatorSize.label, // Added for completeness
  ),

  // Corrected: Use CardThemeData constructor
  cardTheme: CardThemeData(
    color: const Color(0xFF1E1E1E),
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFF2C2C2E),
    textStyle: GoogleFonts.lexend(color: AppColors.textColorDark, fontSize: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    elevation: 4,
  ),

  // Corrected: Use DialogThemeData constructor
  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF1E1E1E),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    titleTextStyle: GoogleFonts.lexend(color: AppColors.textColorDark, fontSize: 18, fontWeight: FontWeight.w600),
    contentTextStyle: GoogleFonts.lexend(color: AppColors.textColorDark, fontSize: 16),
    actionsPadding: const EdgeInsets.all(16.0), // Added for completeness
  ),

  dividerTheme: DividerThemeData(
    color: AppColors.gray.withOpacity(0.3),
    thickness: 1,
    space: 1,
  ),

  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: const Color(0xFF1E1E1E),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    modalBackgroundColor: const Color(0xFF1E1E1E), // Added for completeness
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColors.lightGrey.withOpacity(0.85),
    contentTextStyle: GoogleFonts.lexend(color: AppColors.dark),
    actionTextColor: AppColors.primaryColor,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    elevation: 4, // Added for completeness
  ),
);
