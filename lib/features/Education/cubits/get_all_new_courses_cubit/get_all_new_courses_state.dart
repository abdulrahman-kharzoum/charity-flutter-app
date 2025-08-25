part of 'get_all_new_courses_cubit.dart';

@freezed
abstract class GetAllNewCoursesState with _$GetAllNewCoursesState {
  const factory GetAllNewCoursesState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<CourseModel>? data,
    Failure? failure,
  }) = _GetAllNewCoursesState;
}