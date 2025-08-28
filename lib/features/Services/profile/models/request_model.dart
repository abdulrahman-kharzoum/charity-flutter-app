import 'entity_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
abstract class RequestModel with _$RequestModel {
  const factory RequestModel({
    required int id,
    required String status,
    required String reason,
    @JsonKey(name: 'request_type') required String requestType,
    required EntityModel entity,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
}
