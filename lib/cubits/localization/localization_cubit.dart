import 'dart:ui'; // For Locale
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
// import 'package:shared_preferences/shared_preferences.dart'; // No longer directly needed here

import '../../core/shared/local_network.dart'; // Import CacheNetwork

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  static const String _appLocaleKey = 'app_locale';
  static const Locale defaultLocale = Locale('en');

  LocalizationCubit() : super(LocalizationInitial(defaultLocale)) {
    _loadSavedLocale();
  }

  Future<void> _loadSavedLocale() async {
    // Ensure CacheNetwork is initialized if not already (e.g., in main.dart)
    final String? savedLanguageCode = CacheNetwork.getString(key: _appLocaleKey);
    if (savedLanguageCode != null) {
      emit(LocalizationChanged(Locale(savedLanguageCode)));
    } else {
      emit(LocalizationInitial(defaultLocale));
    }
  }

  Future<void> _saveLocale(String languageCode) async {
    await CacheNetwork.saveString(key: _appLocaleKey, value: languageCode);
  }

  void changeLanguage(String languageCode) {
    if (state.locale.languageCode != languageCode) {
      _saveLocale(languageCode);
      emit(LocalizationChanged(Locale(languageCode)));
    }
  }

  String getCurrentLanguageName() {
    switch (state.locale.languageCode) {
      case 'en':
        return 'English';
      case 'ar':
        return 'العربية';
      default:
        return state.locale.languageCode.toUpperCase();
    }
  }
}
