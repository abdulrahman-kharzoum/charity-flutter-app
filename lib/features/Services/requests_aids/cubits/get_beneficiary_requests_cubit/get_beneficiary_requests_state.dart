part of 'get_beneficiary_requests_cubit.dart';

@freezed
abstract class GetBeneficiaryRequestsState with _$GetBeneficiaryRequestsState {
  const factory GetBeneficiaryRequestsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    BeneficiaryRequestsModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}