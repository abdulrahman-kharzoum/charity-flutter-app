import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../core/shared/connect.dart';
import '../../core/shared/local_network.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
  int checkInternetCounter = -1;

  Future<void> checkConnection({required BuildContext context}) async {
    await Future.delayed(const Duration(seconds: 2));
    print('Checking internet connection');

    if (await checkInternet()) {
      checkLoginStatus(context: context);
    } else {
      checkInternetCounter++;
      emit(SplashNoInternetConnection());
    }
  }

  Future<void> checkLoginStatus({required BuildContext context}) async {
    try {
      String? token = CacheNetwork.getCashData(key: 'token');

      if (token.isEmpty) {
        print('No token found');
        emit(SplashLoginState(isLogIn: false));
      } else {
        String? isVerified = CacheNetwork.getCashData(key: 'is_verified');
        if (isVerified == 'false') {
          emit(SplashLoginState(isLogIn: false));
          return;
        }
        print('Token found: $token');
        emit(SplashLoginState(isLogIn: true));
      }
    } catch (e) {
      print('Error in checkLoginStatus: $e');
      emit(SplashLoginState(isLogIn: false));
    }
  }
}
