import 'plan_model.dart';
import 'salary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_aids_model.freezed.dart';
part 'beneficiary_aids_model.g.dart';

@freezed
abstract class BeneficiaryAidsModel with _$BeneficiaryAidsModel {
  const factory BeneficiaryAidsModel({
    required List<PlanModel> plans,
    required List<SalaryModel> salaries,
  }) = _BeneficiaryAidsModel;

  factory BeneficiaryAidsModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryAidsModelFromJson(json);
}
