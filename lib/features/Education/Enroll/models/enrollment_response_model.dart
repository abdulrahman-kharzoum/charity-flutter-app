import 'package:freezed_annotation/freezed_annotation.dart';

part 'enrollment_response_model.freezed.dart';
part 'enrollment_response_model.g.dart';

@freezed
abstract class EnrollmentResponseModel with _$EnrollmentResponseModel {
  const factory EnrollmentResponseModel({
    required int id,
    required String status,
    @JsonKey(name: 'enrollment_date') required String enrollmentDate,
    @JsonKey(name: 'final_grade') required String? finalGrade,
    @JsonKey(name: 'ai_course_summery') required String? aiCourseSummery,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'course_id') required int courseId,
  }) = _EnrollmentResponseModel;

  factory EnrollmentResponseModel.fromJson(Map<String, dynamic> json) => _$EnrollmentResponseModelFromJson(json);
}
