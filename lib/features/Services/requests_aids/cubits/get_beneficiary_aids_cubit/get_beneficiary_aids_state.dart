part of 'get_beneficiary_aids_cubit.dart';

@freezed
abstract class GetBeneficiaryAidsState with _$GetBeneficiaryAidsState {
  const factory GetBeneficiaryAidsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    BeneficiaryAidsModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}