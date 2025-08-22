import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request_body_model.freezed.dart';
part 'verify_otp_request_body_model.g.dart';

@freezed
abstract class VerifyOtpRequestBodyModel with _$VerifyOtpRequestBodyModel {
  const factory VerifyOtpRequestBodyModel({
    required int attempt_id,
    required String otp,
  }) = _VerifyOtpRequestBodyModel;

  factory VerifyOtpRequestBodyModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpRequestBodyModelFromJson(json);
}
