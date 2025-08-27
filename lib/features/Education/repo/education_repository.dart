import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/education_home_model.dart';
import '../models/course_model.dart';

class EducationRepository {
  final ApiService _apiService;

  EducationRepository(this._apiService);

  Future<Either<Failure, EducationHomeModel>> getEducationHome() async {
    try {
      final response = await _apiService.get(
        EndPoints.mobile_education_home
      );

      final data = EducationHomeModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, List<CourseModel>>> getAllNewCourses({ required String? status,  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.mobile_education_new_courses_all,
        queryParams: {'status': status}
      );

      final List<CourseModel> data = (response.data['data'] as List)
          .map((e) => CourseModel.fromJson(e))
          .toList();

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}