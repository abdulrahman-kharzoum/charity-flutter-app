import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/auth_repository.dart';
import '../../models/verify_otp_response_model.dart';
import '../../models/verify_otp_request_body_model.dart';
import 'package:charity/core/shared/local_network.dart'; // Added import
import 'package:charity/features/auth/models/user_model.dart'; // Added import
import 'package:flutter/foundation.dart'; // Added for print

part 'verify_otp_state.dart';
part 'verify_otp_cubit.freezed.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final AuthRepository _repository;
  final _cancelToken = CancelToken();

  VerifyOtpCubit(this._repository) : super(const VerifyOtpState());

  Future<void> verifyOtp({ required VerifyOtpRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.verifyOtp(body: body, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , failure: failure)),
      (data) async {
          await CacheNetwork.insertToCash(key: 'token', value: data.token);
          if (data.user != null) {
            await CacheNetwork.insertToCash(key: 'id', value: data.user.id.toString());
            UserModel user = data.user;
            await CacheNetwork.saveUser(user: user);
             if (kDebugMode) {
                print("=======================token & id===============");
                print(await CacheNetwork.getCashData(key: 'id'));
                print(await CacheNetwork.getToken());
             }
          } else {
             if (kDebugMode) {
               print("Error: User data is null in VerifyOtpCubit.");
             }
          }
          await CacheNetwork.insertToCash(key: 'isAuthenticated', value: 'true');
          emit(state.copyWith(status: SubmissionStatus.success , data: data));
      },
    );
  }

 @override
  Future<void> close() {
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}
