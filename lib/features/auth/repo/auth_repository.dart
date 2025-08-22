import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/login_attempt_response_model.dart';
import '../models/login_attempt_request_body_model.dart';
import '../models/verify_otp_response_model.dart';
import '../models/verify_otp_request_body_model.dart';
import '../models/resend_otp_response_model.dart';

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

  Future<Either<Failure, VerifyOtpResponseModel>> verifyOtp({ required VerifyOtpRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.auth_attempt_otp_verify,
        data: body.toJson()
      );

      final data = VerifyOtpResponseModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, ResendOtpResponseModel>> resendOtp({ required int attemptId }) async {
    try {

      final endpoint = 'auth/attempt/$attemptId/otp/resend';


      final response = await _apiService.post(
          endpoint,
          data: null
      );

      // 3. Parse the response (this part was likely generated correctly)
      final data = ResendOtpResponseModel.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}