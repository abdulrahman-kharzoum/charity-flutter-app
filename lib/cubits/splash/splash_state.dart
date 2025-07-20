part of 'splash_cubit.dart';

abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashLoginState extends SplashState {
  final bool isLogIn;
  SplashLoginState({required this.isLogIn});
}

class SplashNoInternetConnection extends SplashState {}
