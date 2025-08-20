part of 'home_screen_education_cubit.dart';

abstract class HomeScreenState extends Equatable {
  const HomeScreenState();

  @override
  List<Object> get props => [];
}

class HomeScreenInitial extends HomeScreenState {}

class HomeScreenLoading extends HomeScreenState {}

class HomeScreenLoaded extends HomeScreenState {
  final String userName;
  final List<ChildModel> children;
  final List<CourseModel> newCourses;

  const HomeScreenLoaded({
    required this.userName,
    required this.children,
    required this.newCourses,
  });

  @override
  List<Object> get props => [userName, children, newCourses];
}

class HomeScreenError extends HomeScreenState {
  final String message;

  const HomeScreenError(this.message);

  @override
  List<Object> get props => [message];
}