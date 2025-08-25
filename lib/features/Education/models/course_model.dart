import 'subject_model.dart';
import 'teacher_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    required int id,
    required String name,
    required String status,
    @JsonKey(name: 'start_date') required String? startDate,
    @JsonKey(name: 'finish_date') required String? finishDate,
    @JsonKey(name: 'first_payment_amount') required int firstPaymentAmount,
    required int price,
    @JsonKey(name: 'payment_deadline_days') required int paymentDeadlineDays,
    required SubjectModel subject,
    required TeacherModel? teacher,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);
}
