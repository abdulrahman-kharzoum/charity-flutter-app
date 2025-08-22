import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/auth_repository.dart';
import '../../models/verify_otp_response_model.dart';
import '../../models/verify_otp_request_body_model.dart';

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
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }

 @override
  Future<void> close() {
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}