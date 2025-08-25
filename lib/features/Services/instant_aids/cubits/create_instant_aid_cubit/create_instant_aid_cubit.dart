import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/instant_aids_repository.dart';
import '../../models/instant_aid_api_full_response.dart'; // Import the new full response model
import '../../models/create_instant_aid_request_body_model.dart';

part 'create_instant_aid_state.dart';
part 'create_instant_aid_cubit.freezed.dart';

class CreateInstantAidCubit extends Cubit<CreateInstantAidState> {
  final InstantAidsRepository _repository;
  final _cancelToken = CancelToken();

  CreateInstantAidCubit(this._repository) : super(const CreateInstantAidState());

  Future<void> createInstantAid({ required CreateInstantAidRequestBodyModel body,  }) async {
    print(body.toJson().toString());
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createInstantAid(body: body, );
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
