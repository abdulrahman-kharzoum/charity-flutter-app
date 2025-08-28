import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_model.freezed.dart';
part 'partner_model.g.dart';

@freezed
abstract class PartnerModel with _$PartnerModel {
  const factory PartnerModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String job,
    required String gender,
    @JsonKey(name: 'health_status') required String healthStatus,
  }) = _PartnerModel;

  factory PartnerModel.fromJson(Map<String, dynamic> json) => _$PartnerModelFromJson(json);
}
