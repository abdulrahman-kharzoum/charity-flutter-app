// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instant_aid_api_full_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InstantAidApiFullResponse _$InstantAidApiFullResponseFromJson(
  Map<String, dynamic> json,
) => _InstantAidApiFullResponse(
  message: json['message'] as String,
  data: CreateInstantAidResponseModel.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$InstantAidApiFullResponseToJson(
  _InstantAidApiFullResponse instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};
