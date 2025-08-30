import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/api_services.dart';
import 'package:charity/core/services/end_points.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../models/notification_model.dart';

class NotificationsRepository {
  final ApiService _apiService;

  NotificationsRepository(this._apiService);

  Future<Either<Failure, NotificationModel>> getMyNotifications() async {
    try {
      final response = await _apiService.get(
        EndPoints.mobile_my_notifications
      );

      final data = NotificationModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}