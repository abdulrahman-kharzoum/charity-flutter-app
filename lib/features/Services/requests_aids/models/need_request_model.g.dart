// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'need_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NeedRequestModel _$NeedRequestModelFromJson(Map<String, dynamic> json) =>
    _NeedRequestModel(
      id: (json['id'] as num).toInt(),
      item: json['item'] as String,
      amount: (json['amount'] as num).toInt(),
      reason: json['reason'] as String,
      urgencyLevel: json['urgency_level'] as String,
      requestStatus: json['request_status'] as String,
      receivedAt: json['received_at'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$NeedRequestModelToJson(_NeedRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item': instance.item,
      'amount': instance.amount,
      'reason': instance.reason,
      'urgency_level': instance.urgencyLevel,
      'request_status': instance.requestStatus,
      'received_at': instance.receivedAt,
      'description': instance.description,
    };
