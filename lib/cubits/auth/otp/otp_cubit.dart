import 'package:bloc/bloc.dart';
import 'package:charity/core/shared/local_network.dart';
import 'package:flutter/cupertino.dart';
import 'package:charity/features/auth/repo/auth_repository.dart';
import 'package:charity/features/auth/models/verify_otp_request_body_model.dart';
import 'package:charity/features/auth/models/user_model.dart'; // Import UserModel

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final AuthRepository _authRepository;

  OtpCubit(this._authRepository) : super(OtpInitial());

  Future<void> verifyOtp(String otp, int attemptId) async {
    emit(OtpLoading());
    final body = VerifyOtpRequestBodyModel(otp: otp, attempt_id: attemptId);
    final result = await _authRepository.verifyOtp(body: body);

    result.fold(
      (failure) {
        emit(OtpFailure(errorMessage: failure.message));
      },
      (response) async {
        if (response.token.isNotEmpty) {
          await CacheNetwork.insertToCash(key: 'token', value: response.token);
          await CacheNetwork.insertToCash(key: 'id', value: response.user.id.toString());
          print("=======================token & id===============");
          print(await CacheNetwork.getCashData(key: 'id'));
          print(await CacheNetwork.getToken());
          
          await CacheNetwork.insertToCash(key: 'isAuthenticated', value: 'true');

          // Save the entire User Model
          UserModel user = response.user;
          await CacheNetwork.saveUser(user: user);

          emit(OtpSuccess(successMessage: 'OTP verified successfully!'));
        } else {
          emit(OtpFailure(errorMessage: 'Token not received. Please try again.'));
        }
      },
    );
  }
}
