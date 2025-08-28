import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_model.freezed.dart';
part 'prescription_model.g.dart';

@freezed
abstract class PrescriptionModel with _$PrescriptionModel {
  const factory PrescriptionModel({
    required int id,
    required String reason,
    @JsonKey(name: 'request_status') required String requestStatus,
    required String description,
    @JsonKey(name: 'urgency_level') required String urgencyLevel,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _PrescriptionModel;

  factory PrescriptionModel.fromJson(Map<String, dynamic> json) => _$PrescriptionModelFromJson(json);
}
