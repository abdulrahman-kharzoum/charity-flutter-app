import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_model.freezed.dart';
part 'child_model.g.dart';

@freezed
abstract class ChildModel with _$ChildModel {
  const factory ChildModel({
    required int id,
    required String name,
    @JsonKey(name: 'birth_date') required String birthDate,
    required int age,
    required String gender,
    @JsonKey(name: 'is_alive') required bool isAlive,
    @JsonKey(name: 'partner_name') required String partnerName,
    @JsonKey(name: 'residence_place') required String residencePlace,
    @JsonKey(name: 'courses_count') required int coursesCount,
    @JsonKey(name: 'active_courses_count') required int activeCoursesCount,
  }) = _ChildModel;

  factory ChildModel.fromJson(Map<String, dynamic> json) => _$ChildModelFromJson(json);
}
