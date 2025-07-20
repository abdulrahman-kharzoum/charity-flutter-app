part of 'my_requests_cubit.dart';

abstract class MyRequestsState {}

class MyRequestsInitial extends MyRequestsState {}

class MyRequestsLoading extends MyRequestsState {}

class MyRequestsLoaded extends MyRequestsState {
  final List<RequestModel> requests;
  MyRequestsLoaded(this.requests);
}

class MyRequestsError extends MyRequestsState {
  final String message;
  MyRequestsError(this.message);
}