import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/login_attempt_response_model.dart';
import '../models/login_attempt_request_body_model.dart';

class AuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);

  Future<Either<Failure, LoginAttemptResponseModel>> loginAttempt({ required LoginAttemptRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.auth_user_login_attempt,
        data: body.toJson()
      );

      final data = LoginAttemptResponseModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}