// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileChildModel _$ProfileChildModelFromJson(Map<String, dynamic> json) =>
    _ProfileChildModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      birthDate: json['birth_date'] as String,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      isAlive: json['is_alive'] as bool,
      partnerName: json['partner_name'] as String,
      residencePlace: json['residence_place'] as String,
    );

Map<String, dynamic> _$ProfileChildModelToJson(_ProfileChildModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birth_date': instance.birthDate,
      'age': instance.age,
      'gender': instance.gender,
      'is_alive': instance.isAlive,
      'partner_name': instance.partnerName,
      'residence_place': instance.residencePlace,
    };
