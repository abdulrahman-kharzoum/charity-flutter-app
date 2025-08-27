import 'package:dio/dio.dart';
import 'failure.dart';
import 'server_failure.dart';

class FailureFactory {
  static Failure fromDioException(DioError e) {
    switch (e.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return ServerFailure('Connection timeout');
      case DioErrorType.badResponse:
        return ServerFailure(e.response?.statusMessage ?? 'Server error');
      case DioErrorType.cancel:
        return ServerFailure('Request cancelled');
      default:
        return ServerFailure(e.message ?? 'Network error');
    }
  }

  static Failure create(String message) => ServerFailure(message);
}