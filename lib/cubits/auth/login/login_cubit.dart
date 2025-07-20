import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart'; // For TextEditingController and GlobalKey
// import 'package:dio/dio.dart'; // Keep if you actually use Dio for login
import '../../../core/shared/connect.dart'; // For checkInternet (assuming this is where it is)
import '../../../core/shared/local_network.dart'; // For CacheNetwork (if used for token/user details)
// Or use your specific local_network.dart if CacheNetwork is different
// import '../../../core/shared/local_network.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool _isPasswordVisible = false;
  bool get isPasswordVisible => _isPasswordVisible; // Getter for UI to access

  // If you were using email before and now it's phone, you might not need emailController
  // final emailController = TextEditingController();


  Future<void> loginUser({
    required String phone, // Changed from email to phone
    required String password,
    // BuildContext context, // Usually not needed in Cubit, handle UI feedback in BlocListener
  }) async {
    try {
      // Validate form from UI before calling this if using formKey
      // if (!formKey.currentState!.validate()) {
      //   return; // Or emit a validation failure state
      // }

      if (!await checkInternet()) { // Assuming checkInternet() is a global helper
        emit(LoginFailure(errorMessage: 'No internet connection. Please check your network.'));
        return;
      }

      emit(LoginLoading());

      // --- Actual Login Logic ---
      // Replace this with your actual API call
      // Example using Dio (if you had it):
      // final dio = Dio();
      // final response = await dio.post(
      //   'YOUR_LOGIN_API_ENDPOINT',
      //   data: {
      //     'phone': phone,
      //     'password': password,
      //   },
      // );

      // if (response.statusCode == 200) {
      //   final token = response.data['token']; // Adjust based on your API response
      //   await CacheNetwork.insertToCash(key: 'token', value: token);
      //   // Optionally save user details
      //   // await CacheNetwork.insertToCash(key: 'userPhone', value: phone);
      //   emit(LoginSuccess());
      // } else {
      //   // Handle different error status codes or error messages from API
      //   emit(LoginFailure(errorMessage: response.data['message'] ?? 'Login failed. Please try again.'));
      // }

      // Simulate login success for now (as in your original code)
      await Future.delayed(const Duration(seconds: 2));
      // Store token or user identifier upon successful login
      await CacheNetwork.insertToCash(key: 'token', value: 'sample_token_for_${phone.hashCode}');
      await CacheNetwork.insertToCash(key: 'userIdentifier', value: phone); // Store phone as identifier

      emit(LoginSuccess());

    } catch (e) {
      // print('Login error: $e'); // Good for debugging
      // Provide a more user-friendly error message
      if (e.toString().toLowerCase().contains('socketexception') || e.toString().toLowerCase().contains('httpexception')) {
        emit(LoginFailure(errorMessage: 'Could not connect to the server. Please check your internet connection.'));
      } else {
        emit(LoginFailure(errorMessage: 'An unexpected error occurred: ${e.toString()}'));
      }
    }
  }

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    emit(LoginPasswordVisibilityChanged(isPasswordVisible: _isPasswordVisible));
  }

  @override
  Future<void> close() {
    phoneController.dispose();
    passwordController.dispose();
    // emailController.dispose(); // If you had it
    return super.close();
  }
}
