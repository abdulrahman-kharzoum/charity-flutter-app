import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:charity/cubits/localization/localization_cubit.dart';
import 'failure_service/auth_failure.dart';
import 'failure_service/failure.dart';
import 'failure_service/internet_failure.dart';
import 'failure_service/generice_failure.dart';

class FailureFactory extends Failure {
  FailureFactory(super.message);
  static Failure fromDioException(DioException e) {
    final localizationCubit = GetIt.instance<LocalizationCubit>();
    final isArabic = localizationCubit.state.locale.languageCode == 'ar';

    String getTranslatedMessage(String englishMessage, String arabicMessage) {
      return isArabic ? arabicMessage : englishMessage;
    }

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return InternetFailure(
          getTranslatedMessage(
            "The connection timed out. Please check your internet connection and try again.",
            "انتهت مهلة الاتصال. يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.",
          ),
        );
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        return InternetFailure(
          getTranslatedMessage(
            "Oops! It looks like you are offline. Please check your connection and try again.",
            "عذراً! يبدو أنك غير متصل بالإنترنت. يرجى التحقق من اتصالك والمحاولة مرة أخرى.",
          ),
        );
      case DioExceptionType.badResponse:
        if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
          return AuthFailure(
            getTranslatedMessage(
              'Unauthorized access. Please log in again.',
              'وصول غير مصرح به. يرجى تسجيل الدخول مرة أخرى.',
            ),
          );
        }
        return GenericFailureFactory(
          getTranslatedMessage(
            'Something went wrong. Please try again later. \n ${e.response?.data['message']}',
            'حدث خطأ. يرجى المحاولة مرة أخرى لاحقاً. \n ${e.response?.data['message']}',
          ),
        );
      default:
        return GenericFailureFactory(
          getTranslatedMessage(
            'An unexpected error occurred. Please try again.',
            'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
          ),
        );
    }
  }

  @override
  Future<void> handle(BuildContext context, {void Function()? onRetry}) {
    final localizationCubit = GetIt.instance<LocalizationCubit>();
    final isArabic = localizationCubit.state.locale.languageCode == 'ar';
    String getTranslatedMessage(String englishMessage, String arabicMessage) {
      return isArabic ? arabicMessage : englishMessage;
    }
    GenericFailureFactory(
      getTranslatedMessage(
        'An unexpected error occurred. Please try again.',
        'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
      ),
    );
    throw UnimplementedError();
  }
}
