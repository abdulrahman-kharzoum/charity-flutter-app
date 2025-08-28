import 'package:freezed_annotation/freezed_annotation.dart';

part 'instant_aid_model.freezed.dart';
part 'instant_aid_model.g.dart';

@freezed
abstract class InstantAidModel with _$InstantAidModel {
  const factory InstantAidModel({
    required int id,
    required double amount,
    required String reason,
    @JsonKey(name: 'request_status') required String requestStatus,
    @JsonKey(name: 'urgency_level') required String urgencyLevel,
    @JsonKey(name: 'received_at') required String receivedAt,
  }) = _InstantAidModel;

  factory InstantAidModel.fromJson(Map<String, dynamic> json) => _$InstantAidModelFromJson(json);
}
