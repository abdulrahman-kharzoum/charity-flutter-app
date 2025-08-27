import 'dart:ui'; // For Locale
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart'; // Import SettingsCubit
import '../../core/shared/local_network.dart'; // Import CacheNetwork

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  static const String _appLocaleKey = 'app_locale';
  static const Locale defaultLocale = Locale('en');
  final SettingsCubit _settingsCubit;

  LocalizationCubit(this._settingsCubit) : super(LocalizationInitial(defaultLocale)) {
    _loadSavedLocale();
  }

  Future<void> _loadSavedLocale() async {
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
      _settingsCubit.changeLanguage(); // Call SettingsCubit's changeLanguage
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
