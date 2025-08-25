part of 'add_request_cubit.dart';

@immutable
abstract class AddRequestState {}

class AddRequestInitial extends AddRequestState {}


class AddRequestCurrencyUnitChanged extends AddRequestState {
  final String selectedUnit;
  AddRequestCurrencyUnitChanged({required this.selectedUnit});
}

class AddRequestUrgencyLevelChanged extends AddRequestState {
  final String selectedLevel;
  AddRequestUrgencyLevelChanged({required this.selectedLevel});
}

class AddRequestDateChanged extends AddRequestState {
  final DateTime? selectedDate;
  AddRequestDateChanged({required this.selectedDate});
}
