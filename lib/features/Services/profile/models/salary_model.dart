import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_model.freezed.dart';
part 'salary_model.g.dart';

@freezed
abstract class SalaryModel with _$SalaryModel {
  const factory SalaryModel({
    required int id,
    required int amount,
    @JsonKey(name: 'issued_at') required String issuedAt,
    @JsonKey(name: 'received_at') required String? receivedAt,
    @JsonKey(name: 'beneficiary_id') required int beneficiaryId,
    @JsonKey(name: 'has_taken') required bool hasTaken,
  }) = _SalaryModel;

  factory SalaryModel.fromJson(Map<String, dynamic> json) => _$SalaryModelFromJson(json);
}
