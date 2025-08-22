import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_attempt_response_model.freezed.dart';
part 'login_attempt_response_model.g.dart';

@freezed
abstract class LoginAttemptResponseModel with _$LoginAttemptResponseModel {
  const factory LoginAttemptResponseModel({
    required int id,
    required String identifier,
    required String type,
  }) = _LoginAttemptResponseModel;

  factory LoginAttemptResponseModel.fromJson(Map<String, dynamic> json) => _$LoginAttemptResponseModelFromJson(json);
}
