import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/profile_repository.dart';
import '../../models/beneficiary_profile_model.dart';

part 'get_beneficiary_profile_state.dart';
part 'get_beneficiary_profile_cubit.freezed.dart';

class GetBeneficiaryProfileCubit extends Cubit<GetBeneficiaryProfileState> {
  final ProfileRepository _repository;
  final _cancelToken = CancelToken();

  GetBeneficiaryProfileCubit(this._repository) : super(const GetBeneficiaryProfileState());

  Future<void> getBeneficiaryProfile({ required int beneficiaryId,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getBeneficiaryProfile(beneficiaryId: beneficiaryId, );
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