// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_beneficiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanBeneficiaryModel _$PlanBeneficiaryModelFromJson(
  Map<String, dynamic> json,
) => _PlanBeneficiaryModel(
  pivotId: (json['pivot_id'] as num).toInt(),
  beneficiaryId: (json['beneficiary_id'] as num).toInt(),
  isTurn: (json['is_turn'] as num).toInt(),
  turnUntil: json['turn_until'] as String,
  receivedAt: json['received_at'] as String?,
  hasTaken: json['has_taken'] as bool,
);

Map<String, dynamic> _$PlanBeneficiaryModelToJson(
  _PlanBeneficiaryModel instance,
) => <String, dynamic>{
  'pivot_id': instance.pivotId,
  'beneficiary_id': instance.beneficiaryId,
  'is_turn': instance.isTurn,
  'turn_until': instance.turnUntil,
  'received_at': instance.receivedAt,
  'has_taken': instance.hasTaken,
};
