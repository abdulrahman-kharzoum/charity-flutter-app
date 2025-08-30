import 'package:freezed_annotation/freezed_annotation.dart';

part 'need_request_model.freezed.dart';
part 'need_request_model.g.dart';

@freezed
abstract class NeedRequestModel with _$NeedRequestModel {
  const factory NeedRequestModel({
    required int id,
    required String reason,
    String? description,
    @JsonKey(name: 'request_status') required String requestStatus,
    @JsonKey(name: 'received_at') String? receivedAt,
  }) = _NeedRequestModel;

  factory NeedRequestModel.fromJson(Map<String, dynamic> json) => _$NeedRequestModelFromJson(json);
}