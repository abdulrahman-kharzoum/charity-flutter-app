import 'package:dio/dio.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:get_it/get_it.dart';

class LanguageInterceptor extends Interceptor {
  LanguageInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final settingsCubit = GetIt.instance<SettingsCubit>();
    options.headers['Accept-Language'] = settingsCubit.currentLanguageCode;
    options.headers['lang'] = settingsCubit.currentLanguageCode;
    
    // Add logging for debugging
    
    super.onRequest(options, handler);
  }
}