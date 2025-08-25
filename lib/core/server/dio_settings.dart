import 'package:charity/core/services/end_points.dart';
import 'package:dio/dio.dart';
import '../services/interceptors/auth_interceptor.dart';
import '../services/cache_service.dart';
import '../../core/shared/local_network.dart';

Dio dio() {
  Dio dio = Dio();
  // Update with your API base URL
  dio.options.baseUrl = EndPoints.baseUrl;
  dio.options.headers['Accept'] = 'application/json';
  dio.options.headers['Accept-Language'] = 'en';

  final cacheService = CacheService(sharedPreferences: CacheNetwork.sharedPreferences);
  dio.interceptors.add(AuthInterceptor(cacheService: cacheService));

  return dio;
}