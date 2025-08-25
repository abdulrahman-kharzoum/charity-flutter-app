import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_instant_aid_response_model.freezed.dart';
part 'create_instant_aid_response_model.g.dart';

@freezed
abstract class CreateInstantAidResponseModel with _$CreateInstantAidResponseModel {
  const factory CreateInstantAidResponseModel({
    required int id,
    required int amount,
    required String reason,
    @JsonKey(name: 'request_status') required String requestStatus,
    @JsonKey(name: 'urgency_level') required String urgencyLevel,
    @JsonKey(name: 'received_at') required String? receivedAt,
  }) = _CreateInstantAidResponseModel;

  factory CreateInstantAidResponseModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAidResponseModelFromJson(json);
}
