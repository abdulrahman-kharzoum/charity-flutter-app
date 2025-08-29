// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalaryModel _$SalaryModelFromJson(Map<String, dynamic> json) => _SalaryModel(
  id: (json['id'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
  issuedAt: json['issued_at'] as String,
  receivedAt: json['received_at'] as String?,
  beneficiaryId: (json['beneficiary_id'] as num).toInt(),
  hasTaken: json['has_taken'] as bool,
);

Map<String, dynamic> _$SalaryModelToJson(_SalaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'issued_at': instance.issuedAt,
      'received_at': instance.receivedAt,
      'beneficiary_id': instance.beneficiaryId,
      'has_taken': instance.hasTaken,
    };
