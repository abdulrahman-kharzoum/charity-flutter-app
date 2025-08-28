part of 'get_beneficiary_profile_cubit.dart';

@freezed
abstract class GetBeneficiaryProfileState with _$GetBeneficiaryProfileState {
  const factory GetBeneficiaryProfileState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    BeneficiaryProfileModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}