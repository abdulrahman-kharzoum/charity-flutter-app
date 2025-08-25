part of 'create_instant_aid_cubit.dart';

@freezed
abstract class CreateInstantAidState with _$CreateInstantAidState {
  const factory CreateInstantAidState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    InstantAidApiFullResponse? data,
    Failure? failure,
  }) = _CreateInstantAidState;
}
