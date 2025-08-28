// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupModel _$GroupModelFromJson(Map<String, dynamic> json) => _GroupModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  salary: (json['salary'] as num).toInt(),
  color: json['color'] as String,
  numberOfBeneficiaries: (json['number_of_beneficiaries'] as num).toInt(),
  percentageOfBeneficiaries: (json['percentage_of_beneficiaries'] as num)
      .toInt(),
  conditions: json['conditions'] as List<dynamic>,
);

Map<String, dynamic> _$GroupModelToJson(_GroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'salary': instance.salary,
      'color': instance.color,
      'number_of_beneficiaries': instance.numberOfBeneficiaries,
      'percentage_of_beneficiaries': instance.percentageOfBeneficiaries,
      'conditions': instance.conditions,
    };
