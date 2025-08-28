import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:charity/features/auth/models/user_model.dart';

class CacheNetwork {
  static late SharedPreferences sharedPreferences;

  static Future<void> cacheInit() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveString({
    required String key,
    required String value,
  }) async {
    return await sharedPreferences.setString(key, value);
  }

  static String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }

  static Future<bool> insertToCash({
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

  static String? getToken() {
    return sharedPreferences.getString('token');
  }

  static String? getBeneficiaryId() {
    final user = getUser();
    return user?.id.toString();
  }

  static Future<bool> saveUser({required UserModel user}) async {
    String userJson = jsonEncode(user.toJson());
    return await sharedPreferences.setString('user_info', userJson);
  }

  static UserModel? getUser() {
    String? userJson = sharedPreferences.getString('user_info');
    if (userJson != null && userJson.isNotEmpty) {
      return UserModel.fromJson(jsonDecode(userJson));
    }
    return null;
  }
}
