part of 'add_request_cubit.dart';

@immutable
abstract class AddRequestState {}

class AddRequestInitial extends AddRequestState {}

class AddRequestLoading extends AddRequestState {}

class AddRequestSuccess extends AddRequestState {
  final String message;
  final RequestModel createdRequest;
  AddRequestSuccess({this.message = "Request submitted successfully!", required this.createdRequest});
}

class AddRequestFailure extends AddRequestState {
  final String errorMessage;
  AddRequestFailure({required this.errorMessage});
}

// For toggling the currency unit (ألف/مليون)
class AddRequestCurrencyUnitChanged extends AddRequestState {
  final String selectedUnit; // e.g., "thousand" or "million"
  AddRequestCurrencyUnitChanged({required this.selectedUnit});
}
