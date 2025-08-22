import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_image_model.freezed.dart';
part 'personal_image_model.g.dart';

@freezed
abstract class PersonalImageModel with _$PersonalImageModel {
  const factory PersonalImageModel({
    required int id,
    required String file,
    required String extension,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _PersonalImageModel;

  factory PersonalImageModel.fromJson(Map<String, dynamic> json) => _$PersonalImageModelFromJson(json);
}
