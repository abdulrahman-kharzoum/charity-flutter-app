import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/auth_repository.dart';
import '../../models/resend_otp_response_model.dart';

part 'resend_otp_state.dart';
part 'resend_otp_cubit.freezed.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  final AuthRepository _repository;
  final _cancelToken = CancelToken();

  ResendOtpCubit(this._repository) : super(const ResendOtpState());

  Future<void> resendOtp({ required int attemptId,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.resendOtp(attemptId: attemptId, );
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