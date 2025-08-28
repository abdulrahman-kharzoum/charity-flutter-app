// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uncle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UncleModel _$UncleModelFromJson(Map<String, dynamic> json) => _UncleModel(
  id: (json['id'] as num).toInt(),
  from: json['from'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  job: json['job'] as String,
  providedAid: json['provided_aid'] as String,
);

Map<String, dynamic> _$UncleModelToJson(_UncleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'job': instance.job,
      'provided_aid': instance.providedAid,
    };
