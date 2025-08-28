import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_child_model.freezed.dart';
part 'profile_child_model.g.dart';

@freezed
abstract class ProfileChildModel with _$ProfileChildModel {
  const factory ProfileChildModel({
    required int id,
    required String name,
    @JsonKey(name: 'birth_date') required String birthDate,
    required int age,
    required String gender,
    @JsonKey(name: 'is_alive') required bool isAlive,
    @JsonKey(name: 'partner_name') required String partnerName,
    @JsonKey(name: 'residence_place') required String residencePlace,
  }) = _ProfileChildModel;

  factory ProfileChildModel.fromJson(Map<String, dynamic> json) => _$ProfileChildModelFromJson(json);
}
