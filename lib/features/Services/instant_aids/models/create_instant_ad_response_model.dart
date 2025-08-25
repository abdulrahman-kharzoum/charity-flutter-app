import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_instant_ad_response_model.freezed.dart';
part 'create_instant_ad_response_model.g.dart';

@freezed
abstract class CreateInstantAdResponseModel with _$CreateInstantAdResponseModel {
  const factory CreateInstantAdResponseModel({
    required String message,
  }) = _CreateInstantAdResponseModel;

  factory CreateInstantAdResponseModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAdResponseModelFromJson(json);
}
