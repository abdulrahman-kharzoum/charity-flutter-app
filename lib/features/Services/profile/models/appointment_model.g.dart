// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      id: (json['id'] as num).toInt(),
      ownerId: (json['owner_id'] as num).toInt(),
      ownerType: json['owner_type'] as String,
      date: json['date'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      price: (json['price'] as num).toInt(),
      reason: json['reason'] as String,
      status: json['status'] as String,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$AppointmentModelToJson(_AppointmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'owner_type': instance.ownerType,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'price': instance.price,
      'reason': instance.reason,
      'status': instance.status,
      'result': instance.result,
    };
