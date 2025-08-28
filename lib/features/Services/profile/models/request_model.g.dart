// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestModel _$RequestModelFromJson(Map<String, dynamic> json) =>
    _RequestModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      reason: json['reason'] as String,
      requestType: json['request_type'] as String,
      entity: EntityModel.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RequestModelToJson(_RequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'reason': instance.reason,
      'request_type': instance.requestType,
      'entity': instance.entity,
    };
