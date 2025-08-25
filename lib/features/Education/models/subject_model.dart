import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed
abstract class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required int id,
    required String name,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) => _$SubjectModelFromJson(json);
}
