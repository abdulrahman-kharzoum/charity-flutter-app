// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanModel _$PlanModelFromJson(Map<String, dynamic> json) => _PlanModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  type: json['type'] as String,
  description: json['description'] as String,
  portion: (json['portion'] as num).toInt(),
  beneficiary: PlanBeneficiaryModel.fromJson(
    json['beneficiary'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PlanModelToJson(_PlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'portion': instance.portion,
      'beneficiary': instance.beneficiary,
    };
