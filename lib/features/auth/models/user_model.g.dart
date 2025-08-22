// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  fatherName: json['father_name'] as String,
  motherName: json['mother_name'] as String,
  gender: json['gender'] as String,
  birthDate: json['birth_date'] as String,
  birthPlace: json['birth_place'] as String,
  nationalNumber: json['national_number'] as String,
  job: json['job'] as String,
  healthStatus: json['health_status'] as String,
  phoneNumber: json['phone_number'] as String,
  mobileNumber: json['mobile_number'] as String,
  address: json['address'] as String,
  residenceType: json['residence_type'] as String,
  monthlyIncome: (json['monthly_income'] as num).toInt(),
  caseDescription: json['case_description'] as String,
  groupId: (json['group_id'] as num).toInt(),
  requestId: (json['request_id'] as num).toInt(),
  requestStatus: json['request_status'] as String,
  personalImageId: (json['personal_image_id'] as num).toInt(),
  residenceDocumentId: (json['residence_document_id'] as num).toInt(),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  personalImage: PersonalImageModel.fromJson(
    json['personal_image'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'father_name': instance.fatherName,
      'mother_name': instance.motherName,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'birth_place': instance.birthPlace,
      'national_number': instance.nationalNumber,
      'job': instance.job,
      'health_status': instance.healthStatus,
      'phone_number': instance.phoneNumber,
      'mobile_number': instance.mobileNumber,
      'address': instance.address,
      'residence_type': instance.residenceType,
      'monthly_income': instance.monthlyIncome,
      'case_description': instance.caseDescription,
      'group_id': instance.groupId,
      'request_id': instance.requestId,
      'request_status': instance.requestStatus,
      'personal_image_id': instance.personalImageId,
      'residence_document_id': instance.residenceDocumentId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'personal_image': instance.personalImage,
    };
