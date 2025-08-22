// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_attempt_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginAttemptRequestBodyModel _$LoginAttemptRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _LoginAttemptRequestBodyModel(
  phone_number: json['phone_number'] as String,
  fcm_token: json['fcm_token'] as String,
);

Map<String, dynamic> _$LoginAttemptRequestBodyModelToJson(
  _LoginAttemptRequestBodyModel instance,
) => <String, dynamic>{
  'phone_number': instance.phone_number,
  'fcm_token': instance.fcm_token,
};
