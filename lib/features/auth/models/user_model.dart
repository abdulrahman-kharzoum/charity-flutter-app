import 'personal_image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'father_name') required String fatherName,
    @JsonKey(name: 'mother_name') required String motherName,
    required String gender,
    @JsonKey(name: 'birth_date') required String birthDate,
    @JsonKey(name: 'birth_place') required String birthPlace,
    @JsonKey(name: 'national_number') required String nationalNumber,
    required String job,
    @JsonKey(name: 'health_status') required String healthStatus,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    required String address,
    @JsonKey(name: 'residence_type') required String residenceType,
    @JsonKey(name: 'monthly_income') required int monthlyIncome,
    @JsonKey(name: 'case_description') required String caseDescription,
    @JsonKey(name: 'group_id') required int groupId,
    @JsonKey(name: 'request_id') required int requestId,
    @JsonKey(name: 'request_status') required String requestStatus,
    @JsonKey(name: 'personal_image_id') required int personalImageId,
    @JsonKey(name: 'residence_document_id') required int residenceDocumentId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'personal_image') required PersonalImageModel personalImage,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
