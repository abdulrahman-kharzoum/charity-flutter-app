import 'package:freezed_annotation/freezed_annotation.dart';

part 'enroll_in_course_request_body_model.freezed.dart';
part 'enroll_in_course_request_body_model.g.dart';

@freezed
abstract class EnrollInCourseRequestBodyModel with _$EnrollInCourseRequestBodyModel {
  const factory EnrollInCourseRequestBodyModel({
    required int child_id,
    required int course_id,
  }) = _EnrollInCourseRequestBodyModel;

  factory EnrollInCourseRequestBodyModel.fromJson(Map<String, dynamic> json) => _$EnrollInCourseRequestBodyModelFromJson(json);
}
