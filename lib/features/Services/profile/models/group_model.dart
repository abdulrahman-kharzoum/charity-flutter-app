import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
abstract class GroupModel with _$GroupModel {
  const factory GroupModel({
    required int id,
    required String name,
    required int salary,
    required String color,
    @JsonKey(name: 'number_of_beneficiaries') required int numberOfBeneficiaries,
    @JsonKey(name: 'percentage_of_beneficiaries') required int percentageOfBeneficiaries,
    required List<dynamic> conditions,
  }) = _GroupModel;

  factory GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);
}
