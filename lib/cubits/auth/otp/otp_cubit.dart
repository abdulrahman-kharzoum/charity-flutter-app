import 'package:bloc/bloc.dart';
import 'package:charity/core/shared/local_network.dart';
import 'package:flutter/cupertino.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpInitial());

  Future<void> verifyOtp(String otp) async {
    emit(OtpLoading());
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Hardcode the OTP check
    if (otp == '123456') {
      // On successful verification, you might want to store a session token
      // or set a flag indicating the user is fully authenticated.
      await CacheNetwork.insertToCash(key: 'isAuthenticated', value: 'true');
      emit(OtpSuccess(successMessage: 'OTP verified successfully!'));
    } else {
      emit(OtpFailure(errorMessage: 'Invalid OTP code. Please try again.')); // Use a localized message in a real app
    }
  }
}
