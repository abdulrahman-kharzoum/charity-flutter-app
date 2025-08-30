import 'package:charity/features/notifications/repo/notifications_repository.dart';

import 'package:charity/features/notifications/cubits/get_my_notifications_cubit/get_my_notifications_cubit.dart';

import 'package:charity/features/services/requests_aids/repo/services_repository.dart' hide ServicesRepository;

import 'package:charity/features/services/requests_aids/cubits/get_beneficiary_requests_cubit/get_beneficiary_requests_cubit.dart' hide GetBeneficiaryRequestsCubit;

import 'package:charity/features/services/requests_aids/cubits/get_beneficiary_aids_cubit/get_beneficiary_aids_cubit.dart' hide GetBeneficiaryAidsCubit;

import 'package:charity/features/Services/profile/repo/profile_repository.dart';

import 'package:charity/features/Services/profile/cubits/get_beneficiary_profile_cubit/get_beneficiary_profile_cubit.dart';

import 'package:charity/features/Services/qr/repo/qr_repository.dart';

import 'package:charity/features/Services/qr/cubits/generate_aid_qr_code_cubit/generate_aid_qr_code_cubit.dart';

import 'package:charity/features/Services/requests_aids/repo/services_repository.dart';

import 'package:charity/features/Services/requests_aids/cubits/get_beneficiary_requests_cubit/get_beneficiary_requests_cubit.dart';

import 'package:charity/features/Services/requests_aids/cubits/get_beneficiary_aids_cubit/get_beneficiary_aids_cubit.dart';

import 'package:charity/features/Services/instant_aids/repo/instant_aids_repository.dart';

import 'package:charity/features/Services/instant_aids/cubits/create_instant_aid_cubit/create_instant_aid_cubit.dart';


import 'package:charity/features/auth/repo/auth_repository.dart';

import 'package:charity/features/auth/cubits/resend_otp_cubit/resend_otp_cubit.dart';

import 'package:charity/features/auth/cubits/verify_otp_cubit/verify_otp_cubit.dart';

import 'package:charity/features/auth/cubits/login_attempt_cubit/login_attempt_cubit.dart';

import 'package:charity/features/Education/repo/education_repository.dart'; // Import EducationRepository

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/cache_service.dart';
import '../services/end_points.dart';
import '../services/interceptors/auth_interceptor.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart'; // Import SettingsCubit
import 'package:charity/core/services/interceptors/language_interceptor.dart'; // Import LanguageInterceptor
import 'package:charity/cubits/localization/localization_cubit.dart'; // Import LocalizationCubit

import 'api_services.dart';
import 'package:get_it/get_it.dart';
import 'package:charity/core/shared/settings_repository.dart';
import 'package:charity/core/notification_config/notification.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator(SharedPreferences sharedPreferences) async {
  // Register and initialize FirebaseApi first
  sl.registerLazySingleton(() => FirebaseApi());

  sl.registerSingleton<SharedPreferences>(sharedPreferences);

  // Register CacheService as a singleton and initialize it
  final cacheService = CacheService(sharedPreferences: sl());
  sl.registerSingleton<CacheService>(cacheService);

  await sl<FirebaseApi>().initNotification();

  sl.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(cacheService: sl()),
  );

  // Register SettingsRepository before SettingsCubit
  sl.registerLazySingleton<SettingsRepository>(() => SettingsRepository());
  sl.registerLazySingleton<SettingsCubit>(() => SettingsCubit(sl())); // Register SettingsCubit
  sl.registerLazySingleton<LocalizationCubit>(() => LocalizationCubit(sl())); // Register LocalizationCubit

  sl.registerLazySingleton<LanguageInterceptor>(() => LanguageInterceptor()); // Register LanguageInterceptor

  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'Accept': 'application/json'},
      ),
    );
    dio.interceptors.add(sl<AuthInterceptor>());
    dio.interceptors.add(sl<LanguageInterceptor>()); // Add LanguageInterceptor
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        error: true,
      ),
    );

    return dio;
  });

  sl.registerLazySingleton<ApiService>(() => ApiService(dio: sl()));

  sl.registerFactory(() => LoginAttemptCubit(sl()));
  sl.registerFactory(() => VerifyOtpCubit(sl()));
  sl.registerFactory(() => ResendOtpCubit(sl()));
  sl.registerLazySingleton(() => AuthRepository(sl()));

  // Register EducationRepository as a lazy singleton, injecting ApiService
  sl.registerLazySingleton<EducationRepository>(() => EducationRepository(sl()));

  sl.registerLazySingleton(() => InstantAidsRepository(sl()));
  sl.registerFactory(() => CreateInstantAidCubit(sl()));

  sl.registerFactory(() => GetBeneficiaryAidsCubit(sl()));
  sl.registerFactory(() => GetBeneficiaryRequestsCubit(sl()));
  sl.registerLazySingleton(() => ServicesRepository(sl()));
  sl.registerFactory(() => GenerateAidQrCodeCubit(sl()));
  sl.registerLazySingleton(() => QrRepository(sl()));
  sl.registerFactory(() => GetBeneficiaryProfileCubit(sl()));
  sl.registerLazySingleton(() => ProfileRepository(sl()));
  sl.registerFactory(() => GetMyNotificationsCubit(sl()));
  sl.registerLazySingleton(() => NotificationsRepository(sl()));
}
