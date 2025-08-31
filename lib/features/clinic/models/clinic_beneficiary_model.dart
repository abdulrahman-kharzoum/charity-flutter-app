import 'appointment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_beneficiary_model.freezed.dart';
part 'clinic_beneficiary_model.g.dart';

@freezed
abstract class ClinicBeneficiaryModel with _$ClinicBeneficiaryModel {
  const factory ClinicBeneficiaryModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'father_name') required String fatherName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'birth_date') required String birthDate,
    @JsonKey(name: 'national_number') required String nationalNumber,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String address,
    @JsonKey(name: 'medical_history') required String? medicalHistory,
    required List<AppointmentModel> appointments,
  }) = _ClinicBeneficiaryModel;

  factory ClinicBeneficiaryModel.fromJson(Map<String, dynamic> json) => _$ClinicBeneficiaryModelFromJson(json);
}
