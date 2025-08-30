import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/core/shared/settings_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SettingsRepository _repository;

  String get currentLanguageCode {
    if (state is SettingsLoaded) {
      return (state as SettingsLoaded).locale.languageCode;
    }
    return 'en'; // Default language
  }

  SettingsCubit(this._repository) : super(SettingsInitial()) {
    loadSettings();
  }

  Future<void> loadSettings() async {
    try {
      final settings = await _repository.loadSettings();
      emit(SettingsLoaded(
        themeMode: settings['themeMode'] as ThemeMode,
        locale: settings['locale'] as Locale,
        notificationsEnabled: settings['notificationsEnabled'] as bool,
      ));
    } catch (e) {
      emit(SettingsError(e.toString()));
    }
  }

  Future<void> toggleTheme() async {
    if (state is! SettingsLoaded) return;
    final currentState = state as SettingsLoaded;
    final newThemeMode = currentState.themeMode == ThemeMode.dark
        ? ThemeMode.light
        : ThemeMode.dark;

    await _saveSettings(currentState.copyWith(themeMode: newThemeMode));
  }

  Future<void> changeLanguage() async {
    final currentState = state as SettingsLoaded;
    final newLocale = currentState.locale.languageCode == 'en'
        ? const Locale('ar')
        : const Locale('en');
    await _saveSettings(currentState.copyWith(locale: newLocale));
  }

  Future<void> toggleNotifications() async {
    if (state is! SettingsLoaded) return;
    final currentState = state as SettingsLoaded;
    final newValue = !currentState.notificationsEnabled;

    if (newValue) {
      await FirebaseMessaging.instance.subscribeToTopic('all');
    } else {
      await FirebaseMessaging.instance.unsubscribeFromTopic('all');
    }

    await _saveSettings(currentState.copyWith(notificationsEnabled: newValue));
  }

  Future<void> _saveSettings(SettingsLoaded newState) async {
    try {
      await _repository.saveSettings({
        'themeMode': newState.themeMode,
        'locale': newState.locale,
        'notificationsEnabled': newState.notificationsEnabled,
      });
      emit(newState);
    } catch (e) {
      emit(SettingsError(e.toString()));
    }
  }
}