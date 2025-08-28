// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryProfileModel _$BeneficiaryProfileModelFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryProfileModel(
  id: (json['id'] as num).toInt(),
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  fatherName: json['father_name'] as String,
  motherName: json['mother_name'] as String,
  birthDate: json['birth_date'] as String,
  birthPlace: json['birth_place'] as String,
  gender: json['gender'] as String,
  nationalNumber: json['national_number'] as String,
  job: json['job'] as String,
  healthStatus: json['health_status'] as String,
  phoneNumber: json['phone_number'] as String,
  mobileNumber: json['mobile_number'] as String,
  address: json['address'] as String,
  residenceType: json['residence_type'] as String,
  residenceDocumentId: (json['residence_document_id'] as num).toInt(),
  monthlyIncome: (json['monthly_income'] as num).toInt(),
  caseDescription: json['case_description'] as String,
  groupId: (json['group_id'] as num).toInt(),
  requestId: (json['request_id'] as num).toInt(),
  requestStatus: json['request_status'] as String,
  familyMembersNumber: (json['family_members_number'] as num).toInt(),
  medicalHistory: json['medical_history'] as String?,
  personalImage: FileModel.fromJson(
    json['personalImage'] as Map<String, dynamic>,
  ),
  residenceDocument: FileModel.fromJson(
    json['residenceDocument'] as Map<String, dynamic>,
  ),
  partners: (json['partners'] as List<dynamic>)
      .map((e) => PartnerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  uncles: (json['uncles'] as List<dynamic>)
      .map((e) => UncleModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  children: (json['children'] as List<dynamic>)
      .map((e) => ProfileChildModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  group: GroupModel.fromJson(json['group'] as Map<String, dynamic>),
  request: RequestModel.fromJson(json['request'] as Map<String, dynamic>),
  salaries: (json['salaries'] as List<dynamic>)
      .map((e) => SalaryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  appointments: (json['appointments'] as List<dynamic>)
      .map((e) => AppointmentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BeneficiaryProfileModelToJson(
  _BeneficiaryProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'father_name': instance.fatherName,
  'mother_name': instance.motherName,
  'birth_date': instance.birthDate,
  'birth_place': instance.birthPlace,
  'gender': instance.gender,
  'national_number': instance.nationalNumber,
  'job': instance.job,
  'health_status': instance.healthStatus,
  'phone_number': instance.phoneNumber,
  'mobile_number': instance.mobileNumber,
  'address': instance.address,
  'residence_type': instance.residenceType,
  'residence_document_id': instance.residenceDocumentId,
  'monthly_income': instance.monthlyIncome,
  'case_description': instance.caseDescription,
  'group_id': instance.groupId,
  'request_id': instance.requestId,
  'request_status': instance.requestStatus,
  'family_members_number': instance.familyMembersNumber,
  'medical_history': instance.medicalHistory,
  'personalImage': instance.personalImage,
  'residenceDocument': instance.residenceDocument,
  'partners': instance.partners,
  'uncles': instance.uncles,
  'children': instance.children,
  'group': instance.group,
  'request': instance.request,
  'salaries': instance.salaries,
  'appointments': instance.appointments,
};
