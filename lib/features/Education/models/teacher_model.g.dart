// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) =>
    _TeacherModel(
      id: (json['id'] as num).toInt(),
      fullName: json['full_name'] as String,
      phoneNumber: json['phone_number'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$TeacherModelToJson(_TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
    };
