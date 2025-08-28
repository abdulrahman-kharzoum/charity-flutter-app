import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/qr_repository.dart';
import '../../models/generate_aid_qr_code_response_model.dart';

part 'generate_aid_qr_code_state.dart';
part 'generate_aid_qr_code_cubit.freezed.dart';

class GenerateAidQrCodeCubit extends Cubit<GenerateAidQrCodeState> {
  final QrRepository _repository;
  final _cancelToken = CancelToken();

  GenerateAidQrCodeCubit(this._repository) : super(const GenerateAidQrCodeState());

  Future<void> generateAidQrCode({ required int entityId, required String type,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.generateAidQrCode(entityId: entityId, type: type, );
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