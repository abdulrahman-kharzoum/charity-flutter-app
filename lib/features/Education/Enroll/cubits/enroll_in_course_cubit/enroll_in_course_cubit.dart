import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/enrollment_repository.dart';
import '../../models/enrollment_response_model.dart';
import '../../models/enroll_in_course_request_body_model.dart';

part 'enroll_in_course_state.dart';
part 'enroll_in_course_cubit.freezed.dart';

class EnrollInCourseCubit extends Cubit<EnrollInCourseState> {
  final EnrollmentRepository _repository;
  final _cancelToken = CancelToken();

  EnrollInCourseCubit(this._repository) : super(const EnrollInCourseState());

  Future<void> enrollInCourse({ required EnrollInCourseRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.enrollInCourse(body: body, );
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