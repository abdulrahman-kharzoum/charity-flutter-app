part of 'login_cubit.dart';

@immutable // It's good practice to make BLoC states immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  // You could include user data here if needed upon successful login
  // final User user;
  // LoginSuccess({required this.user});
}

class LoginFailure extends LoginState {
  final String errorMessage;
  LoginFailure({required this.errorMessage});
}

// Specific state for password visibility changes to optimize rebuilds
class LoginPasswordVisibilityChanged extends LoginState {
  final bool isPasswordVisible;
  LoginPasswordVisibilityChanged({required this.isPasswordVisible});
}
