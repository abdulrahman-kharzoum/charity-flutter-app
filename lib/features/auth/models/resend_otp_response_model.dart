import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_response_model.freezed.dart';
part 'resend_otp_response_model.g.dart';

@freezed
abstract class ResendOtpResponseModel with _$ResendOtpResponseModel {
  const factory ResendOtpResponseModel({
    required String message,
  }) = _ResendOtpResponseModel;

  factory ResendOtpResponseModel.fromJson(Map<String, dynamic> json) => _$ResendOtpResponseModelFromJson(json);
}
