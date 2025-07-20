import 'package:shared_preferences/shared_preferences.dart';

class CacheNetwork { // Renamed from CashNetwork
  static late SharedPreferences sharedPreferences;

  static Future<void> cacheInit() async { // Renamed from cashNetworkInit
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // Used by LocalizationCubit
  static Future<bool> saveString({
    required String key,
    required String value,
  }) async {
    return await sharedPreferences.setString(key, value);
  }

  static String? getString({required String key}) { // Allow null return
    return sharedPreferences.getString(key);
  }

  // Your existing methods (can be kept if used elsewhere)
  static Future<bool> insertToCash({ // Consider renaming to align
    required String key,
    required String value,
  }) async {
    return await sharedPreferences.setString(key, value);
  }

  static String getCashData({required String key}) {
    return sharedPreferences.getString(key) ?? '';
  }

  static Future<bool> deleteCashData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  static Future<bool> cleanCash() async {
    return await sharedPreferences.clear();
  }
}
