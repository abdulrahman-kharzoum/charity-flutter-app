import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/clinic_repository.dart';
import '../../models/clinic_beneficiary_model.dart';

part 'get_clinic_beneficiary_state.dart';
part 'get_clinic_beneficiary_cubit.freezed.dart';

class GetClinicBeneficiaryCubit extends Cubit<GetClinicBeneficiaryState> {
  final ClinicRepository _repository;
  final _cancelToken = CancelToken();

  GetClinicBeneficiaryCubit(this._repository) : super(const GetClinicBeneficiaryState());

  Future<void> getClinicBeneficiary() async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getClinicBeneficiary();
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