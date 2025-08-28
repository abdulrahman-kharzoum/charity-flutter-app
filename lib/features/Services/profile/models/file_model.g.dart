// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileModel _$FileModelFromJson(Map<String, dynamic> json) => _FileModel(
  id: (json['id'] as num).toInt(),
  file: json['file'] as String,
  extension: json['extension'] as String,
);

Map<String, dynamic> _$FileModelToJson(_FileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'extension': instance.extension,
    };
