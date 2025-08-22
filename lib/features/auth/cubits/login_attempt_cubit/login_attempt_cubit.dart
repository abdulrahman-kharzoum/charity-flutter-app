import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/auth_repository.dart';
import '../../models/login_attempt_response_model.dart';
import '../../models/login_attempt_request_body_model.dart';

part 'login_attempt_state.dart';
part 'login_attempt_cubit.freezed.dart';

class LoginAttemptCubit extends Cubit<LoginAttemptState> {
  final AuthRepository _repository;
  final _cancelToken = CancelToken();

  LoginAttemptCubit(this._repository) : super(const LoginAttemptState());

  Future<void> loginAttempt({ required LoginAttemptRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.loginAttempt(body: body, );
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