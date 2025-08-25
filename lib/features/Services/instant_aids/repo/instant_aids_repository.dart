import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/create_instant_aid_response_model.dart';
import '../models/create_instant_aid_request_body_model.dart';
import '../models/instant_aid_api_full_response.dart'; // Import the new model

class InstantAidsRepository {
  final ApiService _apiService;

  InstantAidsRepository(this._apiService);

  Future<Either<Failure, InstantAidApiFullResponse>> createInstantAid({ required CreateInstantAidRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.mobile_instant_aids_create,
        data: body.toJson()
      );

      // Parse the full API response here
      final fullResponse = InstantAidApiFullResponse.fromJson(response.data);

      return Right(fullResponse);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
