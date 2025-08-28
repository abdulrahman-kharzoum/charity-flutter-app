// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_aid_qr_code_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateAidQrCodeResponseModel {

@JsonKey(name: 'qr_code') String get qrCode;
/// Create a copy of GenerateAidQrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateAidQrCodeResponseModelCopyWith<GenerateAidQrCodeResponseModel> get copyWith => _$GenerateAidQrCodeResponseModelCopyWithImpl<GenerateAidQrCodeResponseModel>(this as GenerateAidQrCodeResponseModel, _$identity);

  /// Serializes this GenerateAidQrCodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateAidQrCodeResponseModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode);

@override
String toString() {
  return 'GenerateAidQrCodeResponseModel(qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class $GenerateAidQrCodeResponseModelCopyWith<$Res>  {
  factory $GenerateAidQrCodeResponseModelCopyWith(GenerateAidQrCodeResponseModel value, $Res Function(GenerateAidQrCodeResponseModel) _then) = _$GenerateAidQrCodeResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'qr_code') String qrCode
});




}
/// @nodoc
class _$GenerateAidQrCodeResponseModelCopyWithImpl<$Res>
    implements $GenerateAidQrCodeResponseModelCopyWith<$Res> {
  _$GenerateAidQrCodeResponseModelCopyWithImpl(this._self, this._then);

  final GenerateAidQrCodeResponseModel _self;
  final $Res Function(GenerateAidQrCodeResponseModel) _then;

/// Create a copy of GenerateAidQrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qrCode = null,}) {
  return _then(_self.copyWith(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GenerateAidQrCodeResponseModel].
extension GenerateAidQrCodeResponseModelPatterns on GenerateAidQrCodeResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerateAidQrCodeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerateAidQrCodeResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerateAidQrCodeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GenerateAidQrCodeResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerateAidQrCodeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GenerateAidQrCodeResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'qr_code')  String qrCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerateAidQrCodeResponseModel() when $default != null:
return $default(_that.qrCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'qr_code')  String qrCode)  $default,) {final _that = this;
switch (_that) {
case _GenerateAidQrCodeResponseModel():
return $default(_that.qrCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'qr_code')  String qrCode)?  $default,) {final _that = this;
switch (_that) {
case _GenerateAidQrCodeResponseModel() when $default != null:
return $default(_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerateAidQrCodeResponseModel implements GenerateAidQrCodeResponseModel {
  const _GenerateAidQrCodeResponseModel({@JsonKey(name: 'qr_code') required this.qrCode});
  factory _GenerateAidQrCodeResponseModel.fromJson(Map<String, dynamic> json) => _$GenerateAidQrCodeResponseModelFromJson(json);

@override@JsonKey(name: 'qr_code') final  String qrCode;

/// Create a copy of GenerateAidQrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateAidQrCodeResponseModelCopyWith<_GenerateAidQrCodeResponseModel> get copyWith => __$GenerateAidQrCodeResponseModelCopyWithImpl<_GenerateAidQrCodeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateAidQrCodeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateAidQrCodeResponseModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode);

@override
String toString() {
  return 'GenerateAidQrCodeResponseModel(qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$GenerateAidQrCodeResponseModelCopyWith<$Res> implements $GenerateAidQrCodeResponseModelCopyWith<$Res> {
  factory _$GenerateAidQrCodeResponseModelCopyWith(_GenerateAidQrCodeResponseModel value, $Res Function(_GenerateAidQrCodeResponseModel) _then) = __$GenerateAidQrCodeResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'qr_code') String qrCode
});




}
/// @nodoc
class __$GenerateAidQrCodeResponseModelCopyWithImpl<$Res>
    implements _$GenerateAidQrCodeResponseModelCopyWith<$Res> {
  __$GenerateAidQrCodeResponseModelCopyWithImpl(this._self, this._then);

  final _GenerateAidQrCodeResponseModel _self;
  final $Res Function(_GenerateAidQrCodeResponseModel) _then;

/// Create a copy of GenerateAidQrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qrCode = null,}) {
  return _then(_GenerateAidQrCodeResponseModel(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
