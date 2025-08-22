import 'user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_model.freezed.dart';
part 'verify_otp_response_model.g.dart';

@freezed
abstract class VerifyOtpResponseModel with _$VerifyOtpResponseModel {
  const factory VerifyOtpResponseModel({
    required UserModel user,
    required String token,
  }) = _VerifyOtpResponseModel;

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseModelFromJson(json);
}
