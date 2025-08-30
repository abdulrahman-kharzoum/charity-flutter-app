// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanModel _$PlanModelFromJson(Map<String, dynamic> json) => _PlanModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  category: CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
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
      'category_id': instance.categoryId,
      'category': instance.category,
      'description': instance.description,
      'portion': instance.portion,
      'beneficiary': instance.beneficiary,
    };
