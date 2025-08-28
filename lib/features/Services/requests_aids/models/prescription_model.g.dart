// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrescriptionModel _$PrescriptionModelFromJson(Map<String, dynamic> json) =>
    _PrescriptionModel(
      id: (json['id'] as num).toInt(),
      reason: json['reason'] as String,
      requestStatus: json['request_status'] as String,
      description: json['description'] as String,
      urgencyLevel: json['urgency_level'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$PrescriptionModelToJson(_PrescriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reason': instance.reason,
      'request_status': instance.requestStatus,
      'description': instance.description,
      'urgency_level': instance.urgencyLevel,
      'created_at': instance.createdAt,
    };
