import 'plan_beneficiary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_model.freezed.dart';
part 'plan_model.g.dart';

@freezed
abstract class PlanModel with _$PlanModel {
  const factory PlanModel({
    required int id,
    required String name,
    required String type,
    required String description,
    required int portion,
    required PlanBeneficiaryModel beneficiary,
  }) = _PlanModel;

  factory PlanModel.fromJson(Map<String, dynamic> json) => _$PlanModelFromJson(json);
}
