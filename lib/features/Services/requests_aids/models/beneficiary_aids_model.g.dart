// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_aids_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryAidsModel _$BeneficiaryAidsModelFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryAidsModel(
  plans: (json['plans'] as List<dynamic>)
      .map((e) => PlanModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  salaries: (json['salaries'] as List<dynamic>)
      .map((e) => SalaryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BeneficiaryAidsModelToJson(
  _BeneficiaryAidsModel instance,
) => <String, dynamic>{'plans': instance.plans, 'salaries': instance.salaries};
