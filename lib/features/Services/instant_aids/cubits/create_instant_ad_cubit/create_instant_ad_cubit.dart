import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/instant_aids_repository.dart';
import '../../models/create_instant_ad_response_model.dart';
import '../../models/create_instant_ad_request_body_model.dart';

part 'create_instant_ad_state.dart';
part 'create_instant_ad_cubit.freezed.dart';

class CreateInstantAdCubit extends Cubit<CreateInstantAdState> {
  final InstantAidsRepository _repository;
  final _cancelToken = CancelToken();

  CreateInstantAdCubit(this._repository) : super(const CreateInstantAdState());

  Future<void> createInstantAd({ required CreateInstantAdRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createInstantAd(body: body, );
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