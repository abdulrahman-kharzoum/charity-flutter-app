import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/failure_services.dart';
import '../../repo/notifications_repository.dart';
import '../../models/notification_model.dart';

part 'get_my_notifications_state.dart';
part 'get_my_notifications_cubit.freezed.dart';

class GetMyNotificationsCubit extends Cubit<GetMyNotificationsState> {
  final NotificationsRepository _repository;
  final _cancelToken = CancelToken();

  GetMyNotificationsCubit(this._repository) : super(const GetMyNotificationsState());

  Future<void> getMyNotifications() async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getMyNotifications();
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , failure: failure)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }

 @override
  Future<void> close() {
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}