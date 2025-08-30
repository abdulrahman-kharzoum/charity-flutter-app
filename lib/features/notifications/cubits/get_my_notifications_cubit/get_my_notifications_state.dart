part of 'get_my_notifications_cubit.dart';

@freezed
abstract class GetMyNotificationsState with _$GetMyNotificationsState {
  const factory GetMyNotificationsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<NotificationModel>? data,
    Failure? failure,
  }) = _GetMyNotificationsState;
}