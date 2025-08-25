import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_instant_ad_request_body_model.freezed.dart';
part 'create_instant_ad_request_body_model.g.dart';

@freezed
abstract class CreateInstantAdRequestBodyModel with _$CreateInstantAdRequestBodyModel {
  const factory CreateInstantAdRequestBodyModel({
    required int amount,
    required String reason,
    required int beneficiary_id,
    required String? received_at,
    required String urgency_level,
  }) = _CreateInstantAdRequestBodyModel;

  factory CreateInstantAdRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAdRequestBodyModelFromJson(json);
}
