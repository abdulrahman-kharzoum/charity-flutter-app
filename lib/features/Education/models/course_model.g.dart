// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  startDate: json['start_date'] as String?,
  finishDate: json['finish_date'] as String?,
  firstPaymentAmount: (json['first_payment_amount'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  paymentDeadlineDays: (json['payment_deadline_days'] as num).toInt(),
  subject: SubjectModel.fromJson(json['subject'] as Map<String, dynamic>),
  teacher: json['teacher'] == null
      ? null
      : TeacherModel.fromJson(json['teacher'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'start_date': instance.startDate,
      'finish_date': instance.finishDate,
      'first_payment_amount': instance.firstPaymentAmount,
      'price': instance.price,
      'payment_deadline_days': instance.paymentDeadlineDays,
      'subject': instance.subject,
      'teacher': instance.teacher,
    };
