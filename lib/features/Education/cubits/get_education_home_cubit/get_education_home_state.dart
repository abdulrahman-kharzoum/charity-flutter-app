part of 'get_education_home_cubit.dart';

@freezed
abstract class GetEducationHomeState with _$GetEducationHomeState {
  const factory GetEducationHomeState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    EducationHomeModel? data,
    Failure? failure,
  }) = _GetEducationHomeState;
}