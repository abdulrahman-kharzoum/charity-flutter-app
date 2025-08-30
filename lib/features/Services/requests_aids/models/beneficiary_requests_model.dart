import 'instant_aid_model.dart';
import 'need_request_model.dart';
import 'prescription_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_requests_model.freezed.dart';
part 'beneficiary_requests_model.g.dart';

@freezed
abstract class BeneficiaryRequestsModel with _$BeneficiaryRequestsModel {
  const factory BeneficiaryRequestsModel({
    @JsonKey(name: 'instantAids') required List<InstantAidModel> instantAids,
    @JsonKey(name: 'needRequests') required List<NeedRequestModel> needRequests,
    required List<PrescriptionModel> prescriptions,
  }) = _BeneficiaryRequestsModel;

  factory BeneficiaryRequestsModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryRequestsModelFromJson(json);
}
