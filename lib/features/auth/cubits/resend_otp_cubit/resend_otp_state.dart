part of 'resend_otp_cubit.dart';

@freezed
abstract class ResendOtpState with _$ResendOtpState {
  const factory ResendOtpState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    ResendOtpResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}