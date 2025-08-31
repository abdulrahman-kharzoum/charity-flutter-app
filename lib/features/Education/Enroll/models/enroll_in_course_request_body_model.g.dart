// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enroll_in_course_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnrollInCourseRequestBodyModel _$EnrollInCourseRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _EnrollInCourseRequestBodyModel(
  child_id: (json['child_id'] as num).toInt(),
  course_id: (json['course_id'] as num).toInt(),
);

Map<String, dynamic> _$EnrollInCourseRequestBodyModelToJson(
  _EnrollInCourseRequestBodyModel instance,
) => <String, dynamic>{
  'child_id': instance.child_id,
  'course_id': instance.course_id,
};
