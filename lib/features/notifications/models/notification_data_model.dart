import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data_model.freezed.dart';
part 'notification_data_model.g.dart';

@freezed
abstract class NotificationDataModel with _$NotificationDataModel {
  const factory NotificationDataModel({
    required String title,
    required String body,
    required List<dynamic> payload,
    required String? url,
    @JsonKey(name: 'notified_at') required String notifiedAt,
  }) = _NotificationDataModel;

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) => _$NotificationDataModelFromJson(json);
}
