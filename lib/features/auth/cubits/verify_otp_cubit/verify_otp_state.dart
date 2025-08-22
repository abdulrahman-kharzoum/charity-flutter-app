part of 'verify_otp_cubit.dart';

@freezed
abstract class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    VerifyOtpResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}