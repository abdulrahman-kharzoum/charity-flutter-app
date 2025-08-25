import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
abstract class TeacherModel with _$TeacherModel {
  const factory TeacherModel({
    required int id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String email,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);
}
