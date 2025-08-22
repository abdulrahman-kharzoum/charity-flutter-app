part of 'login_attempt_cubit.dart';

@freezed
abstract class LoginAttemptState with _$LoginAttemptState {
  const factory LoginAttemptState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    LoginAttemptResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}