// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PartnerModel _$PartnerModelFromJson(Map<String, dynamic> json) =>
    _PartnerModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      job: json['job'] as String,
      gender: json['gender'] as String,
      healthStatus: json['health_status'] as String,
    );

Map<String, dynamic> _$PartnerModelToJson(_PartnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'job': instance.job,
      'gender': instance.gender,
      'health_status': instance.healthStatus,
    };
