part of 'enroll_in_course_cubit.dart';

@freezed
abstract class EnrollInCourseState with _$EnrollInCourseState {
  const factory EnrollInCourseState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    EnrollmentResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}