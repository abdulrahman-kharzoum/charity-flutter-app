import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../models/request_model.dart';

// TODO: Import your API service or HTTP client
// import 'package:dio/dio.dart';
// import 'package:charity/core/api/api_service.dart'; // Example
// import 'package:charity/core/shared/local_network.dart'; // For token if needed

part 'add_request_state.dart';

class AddRequestCubit extends Cubit<AddRequestState> {
  AddRequestCubit() : super(AddRequestInitial());

  final formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();
  final reasonController = TextEditingController();
  final descriptionController = TextEditingController();
  final notesController = TextEditingController();

  String _selectedCurrencyUnit = "thousand"; // Default to "ألف"
  String get selectedCurrencyUnit => _selectedCurrencyUnit;

  void changeCurrencyUnit(String unit) {
    if (_selectedCurrencyUnit != unit) {
      _selectedCurrencyUnit = unit;
      emit(AddRequestCurrencyUnitChanged(selectedUnit: unit));
    }
  }

  Future<void> submitRequest() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(AddRequestLoading());
      try {
        // --- TODO: Implement your API Call Here ---
        // String? token = await CacheNetwork.getCacheData(key: 'token'); // If auth is needed
        // if (token == null) {
        //   emit(AddRequestFailure(errorMessage: "User not authenticated."));
        //   return;
        // }

        double amount = double.tryParse(amountController.text) ?? 0;
        if (_selectedCurrencyUnit == "million") {
          amount *= 1000; // Assuming "million" means 1000 thousands for simplicity
        }

        final Map<String, dynamic> requestData = {
          'amount': amount, // Or amountController.text if your API takes it as string with unit
          'currency_unit': _selectedCurrencyUnit, // or adjust as per API
          'title': "طلب مساعدة مالية", // You might want a title field or derive it
          'reason': reasonController.text,
          'description': descriptionController.text,
          'notes': notesController.text,
          // Add any other required fields like user_id, etc.
        };
        // --- CREATE THE RequestModel ---
        // For a real app, some of these would come from user input or other sources.
        // For now, we'll construct it based on the controllers.
        final newRequest = RequestModel(
          // You'll need a way to generate a unique ID.
          // For local simulation, timestamp is okay, but not for real apps.
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: "طلب مساعدة مالية", // Or make this a field in your form
          description: descriptionController.text.trim(),
          // reason might be part of description or a separate field if needed in RequestModel
          // For now, let's assume reason is part of the description or not directly in RequestModel.
          // If it is, add: reason: reasonController.text.trim(),


          date: DateTime.now(),
          status: RequestStatus.pending, // Default status
          statusText: "قيد المراجعة", // Default status text (localize if needed)
        );
        print("Submitting request data: $requestData"); // For debugging
        print("AddRequestCubit: Simulated successful request submission.");
        emit(AddRequestSuccess(createdRequest: newRequest, message: "تم إرسال طلبك بنجاح!"));

        // Example API call (replace with your actual implementation)
        // final response = await ApiService.instance.post('/api/requests', data: requestData, token: token);
        // if (response.isSuccess) {
        //    emit(AddRequestSuccess());
        // } else {
        //    emit(AddRequestFailure(errorMessage: response.message ?? "Failed to submit request."));
        // }

        // Simulate API call delay
        await Future.delayed(const Duration(seconds: 2));
        // On success:
        // emit(AddRequestSuccess());
        // On failure:
        // emit(AddRequestFailure(errorMessage: "Simulated API error."));

      } catch (e) {
        emit(AddRequestFailure(errorMessage: "An unexpected error occurred: ${e.toString()}"));
      }
    }
  }

  @override
  Future<void> close() {
    amountController.dispose();
    reasonController.dispose();
    descriptionController.dispose();
    notesController.dispose();
    return super.close();
  }
}
