import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/beneficiary_aids_model.dart';
import '../models/beneficiary_requests_model.dart';

class ServicesRepository {
  final ApiService _apiService;

  ServicesRepository(this._apiService);

  Future<Either<Failure, BeneficiaryAidsModel>> getBeneficiaryAids() async {
    try {
      final response = await _apiService.get(
        EndPoints.mobile_beneficiaries_aids
      );

      final data = BeneficiaryAidsModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, BeneficiaryRequestsModel>> getBeneficiaryRequests({ required int beneficiaryId,  }) async {
    try {
      final endpoint = 'mobile/beneficiaries/$beneficiaryId/requests';

      final response = await _apiService.get(
          endpoint
      );
      final data = BeneficiaryRequestsModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}