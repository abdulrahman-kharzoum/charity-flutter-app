import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/education_repository.dart';
import '../../models/course_model.dart';

part 'get_all_new_courses_state.dart';
part 'get_all_new_courses_cubit.freezed.dart';

class GetAllNewCoursesCubit extends Cubit<GetAllNewCoursesState> {
  final EducationRepository _repository;
  final _cancelToken = CancelToken();

  GetAllNewCoursesCubit(this._repository) : super(const GetAllNewCoursesState());

  Future<void> getAllNewCourses({ required String? status,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getAllNewCourses(status: status, );
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