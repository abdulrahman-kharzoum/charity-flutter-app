import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
abstract class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    required int id,
    @JsonKey(name: 'owner_id') required int ownerId,
    @JsonKey(name: 'owner_type') required String ownerType,
    required String date,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required int price,
    required String reason,
    required String status,
    required String? result,
    required int? discount,
    String? doctorName,
    String? specialization,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);
}
