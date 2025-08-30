import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_beneficiary_model.freezed.dart';
part 'plan_beneficiary_model.g.dart';

@freezed
abstract class PlanBeneficiaryModel with _$PlanBeneficiaryModel {
  const factory PlanBeneficiaryModel({
    @JsonKey(name: 'pivot_id') required int pivotId,
    @JsonKey(name: 'beneficiary_id') required int beneficiaryId,
    @JsonKey(name: 'is_turn') required int isTurn,
    @JsonKey(name: 'turn_until') required String turnUntil,
    @JsonKey(name: 'received_at') required String? receivedAt,
    @JsonKey(name: 'has_taken') required bool hasTaken,
  }) = _PlanBeneficiaryModel;

  factory PlanBeneficiaryModel.fromJson(Map<String, dynamic> json) => _$PlanBeneficiaryModelFromJson(json);
}
