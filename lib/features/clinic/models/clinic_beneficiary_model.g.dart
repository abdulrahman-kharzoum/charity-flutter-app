// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_beneficiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClinicBeneficiaryModel _$ClinicBeneficiaryModelFromJson(
  Map<String, dynamic> json,
) => _ClinicBeneficiaryModel(
  id: (json['id'] as num).toInt(),
  firstName: json['first_name'] as String,
  fatherName: json['father_name'] as String,
  lastName: json['last_name'] as String,
  birthDate: json['birth_date'] as String,
  nationalNumber: json['national_number'] as String,
  phoneNumber: json['phone_number'] as String,
  address: json['address'] as String,
  medicalHistory: json['medical_history'] as String?,
  appointments: (json['appointments'] as List<dynamic>)
      .map((e) => AppointmentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ClinicBeneficiaryModelToJson(
  _ClinicBeneficiaryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'father_name': instance.fatherName,
  'last_name': instance.lastName,
  'birth_date': instance.birthDate,
  'national_number': instance.nationalNumber,
  'phone_number': instance.phoneNumber,
  'address': instance.address,
  'medical_history': instance.medicalHistory,
  'appointments': instance.appointments,
};
