// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationHomeModel _$EducationHomeModelFromJson(Map<String, dynamic> json) =>
    _EducationHomeModel(
      children: (json['children'] as List<dynamic>)
          .map((e) => ChildModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newCourses: (json['newCourses'] as List<dynamic>)
          .map((e) => CourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EducationHomeModelToJson(_EducationHomeModel instance) =>
    <String, dynamic>{
      'children': instance.children,
      'newCourses': instance.newCourses,
    };
