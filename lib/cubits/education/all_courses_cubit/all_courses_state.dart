part of 'all_courses_cubit.dart';

abstract class AllCoursesState extends Equatable {
  const AllCoursesState();

  @override
  List<Object> get props => [];
}

class AllCoursesInitial extends AllCoursesState {}

class AllCoursesLoading extends AllCoursesState {}

class AllCoursesLoaded extends AllCoursesState {
  final List<CourseDetailModel> courses;

  const AllCoursesLoaded(this.courses);

  @override
  List<Object> get props => [courses];
}

class AllCoursesError extends AllCoursesState {
  final String message;

  const AllCoursesError(this.message);

  @override
  List<Object> get props => [message];
}

class CourseSubscriptionLoading extends AllCoursesState {
  final String courseId;
  const CourseSubscriptionLoading(this.courseId);
  @override
  List<Object> get props => [courseId];
}

class CourseSubscriptionSuccess extends AllCoursesState {
  final String courseId;
  const CourseSubscriptionSuccess(this.courseId);
  @override
  List<Object> get props => [courseId];
}

class CourseSubscriptionError extends AllCoursesState {
  final String courseId;
  final String message;
  const CourseSubscriptionError(this.courseId, this.message);
  @override
  List<Object> get props => [courseId, message];
}
