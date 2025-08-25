import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/education_repository.dart';
import '../../models/education_home_model.dart';

part 'get_education_home_state.dart';
part 'get_education_home_cubit.freezed.dart';

class GetEducationHomeCubit extends Cubit<GetEducationHomeState> {
  final EducationRepository _repository;
  final _cancelToken = CancelToken();

  GetEducationHomeCubit(this._repository) : super(const GetEducationHomeState());

  Future<void> getEducationHome() async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getEducationHome();
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