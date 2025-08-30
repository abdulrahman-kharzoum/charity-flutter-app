// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'need_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NeedRequestModel _$NeedRequestModelFromJson(Map<String, dynamic> json) =>
    _NeedRequestModel(
      id: (json['id'] as num).toInt(),
      reason: json['reason'] as String,
      description: json['description'] as String?,
      requestStatus: json['request_status'] as String,
      receivedAt: json['received_at'] as String?,
    );

Map<String, dynamic> _$NeedRequestModelToJson(_NeedRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reason': instance.reason,
      'description': instance.description,
      'request_status': instance.requestStatus,
      'received_at': instance.receivedAt,
    };
