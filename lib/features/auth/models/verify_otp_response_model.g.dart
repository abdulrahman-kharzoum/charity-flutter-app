// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => _VerifyOtpResponseModel(
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
  _VerifyOtpResponseModel instance,
) => <String, dynamic>{'user': instance.user, 'token': instance.token};
