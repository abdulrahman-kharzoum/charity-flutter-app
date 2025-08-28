import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_aid_qr_code_response_model.freezed.dart';
part 'generate_aid_qr_code_response_model.g.dart';

@freezed
abstract class GenerateAidQrCodeResponseModel with _$GenerateAidQrCodeResponseModel {
  const factory GenerateAidQrCodeResponseModel({
    @JsonKey(name: 'qr_code') required String qrCode,
  }) = _GenerateAidQrCodeResponseModel;

  factory GenerateAidQrCodeResponseModel.fromJson(Map<String, dynamic> json) => _$GenerateAidQrCodeResponseModelFromJson(json);
}
