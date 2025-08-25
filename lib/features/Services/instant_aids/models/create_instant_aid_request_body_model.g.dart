// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instant_aid_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateInstantAidRequestBodyModel _$CreateInstantAidRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateInstantAidRequestBodyModel(
  amount: (json['amount'] as num).toInt(),
  reason: json['reason'] as String,
  beneficiary_id: (json['beneficiary_id'] as num).toInt(),
  received_at: json['received_at'] as String?,
  urgency_level: json['urgency_level'] as String,
);

Map<String, dynamic> _$CreateInstantAidRequestBodyModelToJson(
  _CreateInstantAidRequestBodyModel instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'reason': instance.reason,
  'beneficiary_id': instance.beneficiary_id,
  'received_at': instance.received_at,
  'urgency_level': instance.urgency_level,
};
