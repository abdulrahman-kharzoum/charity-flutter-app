// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnrollmentResponseModel _$EnrollmentResponseModelFromJson(
  Map<String, dynamic> json,
) => _EnrollmentResponseModel(
  id: (json['id'] as num).toInt(),
  status: json['status'] as String,
  enrollmentDate: json['enrollment_date'] as String,
  finalGrade: json['final_grade'] as String?,
  aiCourseSummery: json['ai_course_summery'] as String?,
  childId: (json['child_id'] as num).toInt(),
  courseId: (json['course_id'] as num).toInt(),
);

Map<String, dynamic> _$EnrollmentResponseModelToJson(
  _EnrollmentResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'enrollment_date': instance.enrollmentDate,
  'final_grade': instance.finalGrade,
  'ai_course_summery': instance.aiCourseSummery,
  'child_id': instance.childId,
  'course_id': instance.courseId,
};
