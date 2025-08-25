// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChildModel _$ChildModelFromJson(Map<String, dynamic> json) => _ChildModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  birthDate: json['birth_date'] as String,
  age: (json['age'] as num).toInt(),
  gender: json['gender'] as String,
  isAlive: json['is_alive'] as bool,
  partnerName: json['partner_name'] as String,
  residencePlace: json['residence_place'] as String,
  coursesCount: (json['courses_count'] as num).toInt(),
  activeCoursesCount: (json['active_courses_count'] as num).toInt(),
);

Map<String, dynamic> _$ChildModelToJson(_ChildModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birth_date': instance.birthDate,
      'age': instance.age,
      'gender': instance.gender,
      'is_alive': instance.isAlive,
      'partner_name': instance.partnerName,
      'residence_place': instance.residencePlace,
      'courses_count': instance.coursesCount,
      'active_courses_count': instance.activeCoursesCount,
    };
