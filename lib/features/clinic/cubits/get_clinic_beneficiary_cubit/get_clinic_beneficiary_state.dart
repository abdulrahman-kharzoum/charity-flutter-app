part of 'get_clinic_beneficiary_cubit.dart';

@freezed
abstract class GetClinicBeneficiaryState with _$GetClinicBeneficiaryState {
  const factory GetClinicBeneficiaryState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    ClinicBeneficiaryModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}