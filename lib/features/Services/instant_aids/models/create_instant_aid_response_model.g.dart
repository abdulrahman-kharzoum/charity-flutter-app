// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instant_aid_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateInstantAidResponseModel _$CreateInstantAidResponseModelFromJson(
  Map<String, dynamic> json,
) => _CreateInstantAidResponseModel(
  id: (json['id'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  reason: json['reason'] as String,
  requestStatus: json['request_status'] as String,
  urgencyLevel: json['urgency_level'] as String,
  receivedAt: json['received_at'] as String?,
);

Map<String, dynamic> _$CreateInstantAidResponseModelToJson(
  _CreateInstantAidResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'reason': instance.reason,
  'request_status': instance.requestStatus,
  'urgency_level': instance.urgencyLevel,
  'received_at': instance.receivedAt,
};
