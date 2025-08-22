// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonalImageModel _$PersonalImageModelFromJson(Map<String, dynamic> json) =>
    _PersonalImageModel(
      id: (json['id'] as num).toInt(),
      file: json['file'] as String,
      extension: json['extension'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$PersonalImageModelToJson(_PersonalImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'extension': instance.extension,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
