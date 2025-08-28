// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_requests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryRequestsModel _$BeneficiaryRequestsModelFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryRequestsModel(
  instantAids: (json['instantAids'] as List<dynamic>)
      .map((e) => InstantAidModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  needRequests: json['needRequests'] as List<dynamic>,
  prescriptions: (json['prescriptions'] as List<dynamic>)
      .map((e) => PrescriptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BeneficiaryRequestsModelToJson(
  _BeneficiaryRequestsModel instance,
) => <String, dynamic>{
  'instantAids': instance.instantAids,
  'needRequests': instance.needRequests,
  'prescriptions': instance.prescriptions,
};
