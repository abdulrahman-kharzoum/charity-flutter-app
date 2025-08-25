import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

part 'add_request_state.dart';

class AddRequestCubit extends Cubit<AddRequestState> {
  AddRequestCubit() : super(AddRequestInitial());

  final formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();
  final reasonController = TextEditingController();
  final notesController = TextEditingController();

  String _selectedCurrencyUnit = "thousand";
  String get selectedCurrencyUnit => _selectedCurrencyUnit;

  void changeCurrencyUnit(String unit) {
    if (_selectedCurrencyUnit != unit) {
      _selectedCurrencyUnit = unit;
      emit(AddRequestCurrencyUnitChanged(selectedUnit: unit));
    }
  }

  String _selectedUrgencyLevel = "low";
  String get selectedUrgencyLevel => _selectedUrgencyLevel;

  void changeUrgencyLevel(String level) {
    if (_selectedUrgencyLevel != level) {
      _selectedUrgencyLevel = level;
      emit(AddRequestUrgencyLevelChanged(selectedLevel: level));
    }
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;

  void changeDate(DateTime? date) {
    if (_selectedDate != date) {
      _selectedDate = date;
      emit(AddRequestDateChanged(selectedDate: date));
    }
  }

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  @override
  Future<void> close() {
    amountController.dispose();
    reasonController.dispose();
    notesController.dispose();
    return super.close();
  }
}