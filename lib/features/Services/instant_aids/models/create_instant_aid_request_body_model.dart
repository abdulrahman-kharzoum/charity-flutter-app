import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_instant_aid_request_body_model.freezed.dart';
part 'create_instant_aid_request_body_model.g.dart';

/// Helper to only include non-empty received_at in JSON
String? _toNullableNonEmpty(String? value) => (value?.isNotEmpty ?? false) ? value : null;

@freezed
abstract class CreateInstantAidRequestBodyModel with _$CreateInstantAidRequestBodyModel {
  const factory CreateInstantAidRequestBodyModel({
    required int amount,
    required String reason,
    required int beneficiary_id,
    @JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty)
    String? received_at,
    required String urgency_level,
  }) = _CreateInstantAidRequestBodyModel;

  factory CreateInstantAidRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAidRequestBodyModelFromJson(json);

}
