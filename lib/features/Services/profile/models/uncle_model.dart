import 'package:freezed_annotation/freezed_annotation.dart';

part 'uncle_model.freezed.dart';
part 'uncle_model.g.dart';

@freezed
abstract class UncleModel with _$UncleModel {
  const factory UncleModel({
    required int id,
    required String from,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String job,
    @JsonKey(name: 'provided_aid') required String providedAid,
  }) = _UncleModel;

  factory UncleModel.fromJson(Map<String, dynamic> json) => _$UncleModelFromJson(json);
}
