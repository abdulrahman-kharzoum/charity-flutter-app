import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/generate_aid_qr_code_response_model.dart';

class QrRepository {
  final ApiService _apiService;

  QrRepository(this._apiService);

  Future<Either<Failure, GenerateAidQrCodeResponseModel>> generateAidQrCode({ required int entityId, required String type,  }) async {
    try {

      final endpoint = 'mobile/aids/qr?entity_id=$entityId&type=$type';

      final response = await _apiService.post(
          endpoint,
          data: null
      );

      final data = GenerateAidQrCodeResponseModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}