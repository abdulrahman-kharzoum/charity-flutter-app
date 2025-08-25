import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:charity/features/Services/instant_aids/models/create_instant_aid_response_model.dart';

part 'instant_aid_api_full_response.freezed.dart';
part 'instant_aid_api_full_response.g.dart';

@freezed
abstract class InstantAidApiFullResponse with _$InstantAidApiFullResponse {
  const factory InstantAidApiFullResponse({
    required String message,
    required CreateInstantAidResponseModel data,
  }) = _InstantAidApiFullResponse;

  factory InstantAidApiFullResponse.fromJson(Map<String, dynamic> json) => _$InstantAidApiFullResponseFromJson(json);
}
