// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpRequestBodyModel _$VerifyOtpRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _VerifyOtpRequestBodyModel(
  attempt_id: (json['attempt_id'] as num).toInt(),
  otp: json['otp'] as String,
);

Map<String, dynamic> _$VerifyOtpRequestBodyModelToJson(
  _VerifyOtpRequestBodyModel instance,
) => <String, dynamic>{'attempt_id': instance.attempt_id, 'otp': instance.otp};
