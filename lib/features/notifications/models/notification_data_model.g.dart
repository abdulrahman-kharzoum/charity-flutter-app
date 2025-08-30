// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationDataModel _$NotificationDataModelFromJson(
  Map<String, dynamic> json,
) => _NotificationDataModel(
  title: json['title'] as String,
  body: json['body'] as String,
  payload: json['payload'] as List<dynamic>,
  url: json['url'] as String?,
  notifiedAt: json['notified_at'] as String,
);

Map<String, dynamic> _$NotificationDataModelToJson(
  _NotificationDataModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'body': instance.body,
  'payload': instance.payload,
  'url': instance.url,
  'notified_at': instance.notifiedAt,
};
