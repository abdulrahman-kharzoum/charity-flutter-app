import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_attempt_request_body_model.freezed.dart';
part 'login_attempt_request_body_model.g.dart';

@freezed
abstract class LoginAttemptRequestBodyModel with _$LoginAttemptRequestBodyModel {
  const factory LoginAttemptRequestBodyModel({
    required String phone_number,
    required String fcm_token,
  }) = _LoginAttemptRequestBodyModel;

  factory LoginAttemptRequestBodyModel.fromJson(Map<String, dynamic> json) => _$LoginAttemptRequestBodyModelFromJson(json);
}
