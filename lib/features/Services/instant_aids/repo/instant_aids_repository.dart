import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/create_instant_ad_response_model.dart';
import '../models/create_instant_ad_request_body_model.dart';

class InstantAidsRepository {
  final ApiService _apiService;

  InstantAidsRepository(this._apiService);

  Future<Either<Failure, CreateInstantAdResponseModel>> createInstantAd({ required CreateInstantAdRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.mobile_instant_ads_create,
        data: body.toJson()
      );

      final data = CreateInstantAdResponseModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}