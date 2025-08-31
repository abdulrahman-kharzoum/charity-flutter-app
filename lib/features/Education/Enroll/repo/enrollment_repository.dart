import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/enrollment_response_model.dart';
import '../models/enroll_in_course_request_body_model.dart';

class EnrollmentRepository {
  final ApiService _apiService;

  EnrollmentRepository(this._apiService);

  Future<Either<Failure, EnrollmentResponseModel>> enrollInCourse({ required EnrollInCourseRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.mobile_enroll_in_course,
        data: body.toJson()
      );

      final data = EnrollmentResponseModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}