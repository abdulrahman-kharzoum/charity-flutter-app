// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_attempt_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginAttemptResponseModel _$LoginAttemptResponseModelFromJson(
  Map<String, dynamic> json,
) => _LoginAttemptResponseModel(
  id: (json['id'] as num).toInt(),
  identifier: json['identifier'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$LoginAttemptResponseModelToJson(
  _LoginAttemptResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'identifier': instance.identifier,
  'type': instance.type,
};
