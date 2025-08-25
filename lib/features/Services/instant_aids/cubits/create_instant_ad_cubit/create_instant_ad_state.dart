part of 'create_instant_ad_cubit.dart';

@freezed
abstract class CreateInstantAdState with _$CreateInstantAdState {
  const factory CreateInstantAdState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateInstantAdResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}