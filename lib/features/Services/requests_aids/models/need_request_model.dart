import 'package:freezed_annotation/freezed_annotation.dart';

part 'need_request_model.freezed.dart';
part 'need_request_model.g.dart';

@freezed
abstract class NeedRequestModel with _$NeedRequestModel {
  const factory NeedRequestModel({
    required int id,
    required String item,
    required int amount,
    required String reason,
    @JsonKey(name: 'urgency_level') required String urgencyLevel,
    @JsonKey(name: 'request_status') required String requestStatus,
    @JsonKey(name: 'received_at') required String? receivedAt,
    @JsonKey(name: 'description') String? description,
  }) = _NeedRequestModel;

  factory NeedRequestModel.fromJson(Map<String, dynamic> json) => _$NeedRequestModelFromJson(json);
}