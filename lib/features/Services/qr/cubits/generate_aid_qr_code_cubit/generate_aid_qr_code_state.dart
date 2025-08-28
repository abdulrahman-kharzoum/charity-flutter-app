part of 'generate_aid_qr_code_cubit.dart';

@freezed
abstract class GenerateAidQrCodeState with _$GenerateAidQrCodeState {
  const factory GenerateAidQrCodeState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    GenerateAidQrCodeResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}