import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/clinic_beneficiary_model.dart';

class ClinicRepository {
  final ApiService _apiService;

  ClinicRepository(this._apiService);

  Future<Either<Failure, ClinicBeneficiaryModel>> getClinicBeneficiary() async {
    try {
      final response = await _apiService.get(
        EndPoints.mobile_clinic_beneficiary
      );

      final data = ClinicBeneficiaryModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}