import 'package:dio/dio.dart';

Dio dio() {
  Dio dio = Dio();
  // Update with your API base URL
  dio.options.baseUrl = 'https://api.example.com/';
  dio.options.headers['Accept'] = 'application/json';
  dio.options.headers['Accept-Language'] = 'en';
  return dio;
}
