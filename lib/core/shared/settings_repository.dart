import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  static const _themeKey = 'theme_mode';
  static const _localeKey = 'locale';
  static const _notificationsKey = 'notifications_enabled';

  Future<Map<String, dynamic>> loadSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return {
        'themeMode': _getThemeMode(prefs.getString(_themeKey)),
        'locale': Locale(prefs.getString(_localeKey) ?? 'en'),
        'notificationsEnabled': prefs.getBool(_notificationsKey) ?? true,
      };
    } catch (e) {
      throw Exception('Failed to load settings: $e');
    }
  }

  Future<void> saveSettings(Map<String, dynamic> settings) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_themeKey, _themeModeToString(settings['themeMode'] as ThemeMode));
      await prefs.setString(_localeKey, (settings['locale'] as Locale).languageCode);
      await prefs.setBool(_notificationsKey, settings['notificationsEnabled'] as bool);
    } catch (e) {
      throw Exception('Failed to save settings: $e');
    }
  }

  ThemeMode _getThemeMode(String? value) {
    switch (value) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.light;
    }
  }

  String _themeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.light:
        return 'light';
      case ThemeMode.system:
        return 'system';
    }
  }
}