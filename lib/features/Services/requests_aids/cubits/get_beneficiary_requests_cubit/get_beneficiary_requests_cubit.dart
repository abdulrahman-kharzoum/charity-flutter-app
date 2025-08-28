import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/services_repository.dart';
import '../../models/beneficiary_requests_model.dart';

part 'get_beneficiary_requests_state.dart';
part 'get_beneficiary_requests_cubit.freezed.dart';

class GetBeneficiaryRequestsCubit extends Cubit<GetBeneficiaryRequestsState> {
  final ServicesRepository _repository;
  final _cancelToken = CancelToken();

  GetBeneficiaryRequestsCubit(this._repository) : super(const GetBeneficiaryRequestsState());

  Future<void> getBeneficiaryRequests({ required int beneficiaryId,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getBeneficiaryRequests(beneficiaryId: beneficiaryId, );
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