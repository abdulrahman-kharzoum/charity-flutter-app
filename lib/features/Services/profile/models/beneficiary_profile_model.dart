import 'file_model.dart';
import 'partner_model.dart';
import 'uncle_model.dart';
import 'profile_child_model.dart';
import 'group_model.dart';
import 'request_model.dart';
import 'salary_model.dart';
import 'appointment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_profile_model.freezed.dart';
part 'beneficiary_profile_model.g.dart';

@freezed
abstract class BeneficiaryProfileModel with _$BeneficiaryProfileModel {
  const factory BeneficiaryProfileModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'father_name') required String fatherName,
    @JsonKey(name: 'mother_name') required String motherName,
    @JsonKey(name: 'birth_date') required String birthDate,
    @JsonKey(name: 'birth_place') required String birthPlace,
    required String gender,
    @JsonKey(name: 'national_number') required String nationalNumber,
    required String job,
    @JsonKey(name: 'health_status') required String healthStatus,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    required String address,
    @JsonKey(name: 'residence_type') required String residenceType,
    @JsonKey(name: 'residence_document_id') required int residenceDocumentId,
    @JsonKey(name: 'monthly_income') required int monthlyIncome,
    @JsonKey(name: 'case_description') required String caseDescription,
    @JsonKey(name: 'group_id') required int groupId,
    @JsonKey(name: 'request_id') required int requestId,
    @JsonKey(name: 'request_status') required String requestStatus,
    @JsonKey(name: 'family_members_number') required int familyMembersNumber,
    @JsonKey(name: 'medical_history') required String? medicalHistory,
    required FileModel personalImage,
    required FileModel residenceDocument,
    required List<PartnerModel> partners,
    required List<UncleModel> uncles,
    required List<ProfileChildModel> children,
    required GroupModel group,
    required RequestModel request,
    required List<SalaryModel> salaries,
    required List<AppointmentModel> appointments,
  }) = _BeneficiaryProfileModel;

  factory BeneficiaryProfileModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryProfileModelFromJson(json);
}
