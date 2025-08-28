// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instant_aid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InstantAidModel _$InstantAidModelFromJson(Map<String, dynamic> json) =>
    _InstantAidModel(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      reason: json['reason'] as String,
      requestStatus: json['request_status'] as String,
      urgencyLevel: json['urgency_level'] as String,
      receivedAt: json['received_at'] as String,
    );

Map<String, dynamic> _$InstantAidModelToJson(_InstantAidModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'reason': instance.reason,
      'request_status': instance.requestStatus,
      'urgency_level': instance.urgencyLevel,
      'received_at': instance.receivedAt,
    };
