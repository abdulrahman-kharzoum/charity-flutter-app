part of 'otp_cubit.dart';

@immutable
abstract class OtpState {}

class OtpInitial extends OtpState {}

class OtpLoading extends OtpState {}

class OtpSuccess extends OtpState {
  final String successMessage;

  OtpSuccess({required this.successMessage});
}

class OtpFailure extends OtpState {
  final String errorMessage;

  OtpFailure({required this.errorMessage});
}
