import 'child_model.dart';
import 'course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_home_model.freezed.dart';
part 'education_home_model.g.dart';

@freezed
abstract class EducationHomeModel with _$EducationHomeModel {
  const factory EducationHomeModel({
    required List<ChildModel> children,
    @JsonKey(name: 'newCourses') required List<CourseModel> newCourses,
  }) = _EducationHomeModel;

  factory EducationHomeModel.fromJson(Map<String, dynamic> json) => _$EducationHomeModelFromJson(json);
}
