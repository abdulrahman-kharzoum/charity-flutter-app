import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/beneficiary_profile_model.dart';

class ProfileRepository {
  final ApiService _apiService;

  ProfileRepository(this._apiService);

  Future<Either<Failure, BeneficiaryProfileModel>> getBeneficiaryProfile({ required int beneficiaryId,  }) async {
    try {

      final endpoint = 'mobile/beneficiaries/show/$beneficiaryId';

      final response = await _apiService.get(
          endpoint
      );

      final data = BeneficiaryProfileModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}