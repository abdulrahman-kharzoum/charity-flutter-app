import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_instant_aid_request_body_model.freezed.dart';
part 'create_instant_aid_request_body_model.g.dart';

@freezed
abstract class CreateInstantAidRequestBodyModel with _$CreateInstantAidRequestBodyModel {
  const factory CreateInstantAidRequestBodyModel({
    required int amount,
    required String reason,
    required int beneficiary_id,
    String? received_at,
    required String urgency_level,
  }) = _CreateInstantAidRequestBodyModel;

  factory CreateInstantAidRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAidRequestBodyModelFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'amount': amount,
      'reason': reason,
      'beneficiary_id': beneficiary_id,
      'urgency_level': urgency_level,
    };
    if (received_at != null) {
      json['received_at'] = received_at;
    }
    return json;
  }
}
