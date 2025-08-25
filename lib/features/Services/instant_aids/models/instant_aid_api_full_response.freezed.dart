// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instant_aid_api_full_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InstantAidApiFullResponse {

 String get message; CreateInstantAidResponseModel get data;
/// Create a copy of InstantAidApiFullResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstantAidApiFullResponseCopyWith<InstantAidApiFullResponse> get copyWith => _$InstantAidApiFullResponseCopyWithImpl<InstantAidApiFullResponse>(this as InstantAidApiFullResponse, _$identity);

  /// Serializes this InstantAidApiFullResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstantAidApiFullResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,data);

@override
String toString() {
  return 'InstantAidApiFullResponse(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $InstantAidApiFullResponseCopyWith<$Res>  {
  factory $InstantAidApiFullResponseCopyWith(InstantAidApiFullResponse value, $Res Function(InstantAidApiFullResponse) _then) = _$InstantAidApiFullResponseCopyWithImpl;
@useResult
$Res call({
 String message, CreateInstantAidResponseModel data
});


$CreateInstantAidResponseModelCopyWith<$Res> get data;

}
/// @nodoc
class _$InstantAidApiFullResponseCopyWithImpl<$Res>
    implements $InstantAidApiFullResponseCopyWith<$Res> {
  _$InstantAidApiFullResponseCopyWithImpl(this._self, this._then);

  final InstantAidApiFullResponse _self;
  final $Res Function(InstantAidApiFullResponse) _then;

/// Create a copy of InstantAidApiFullResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateInstantAidResponseModel,
  ));
}
/// Create a copy of InstantAidApiFullResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateInstantAidResponseModelCopyWith<$Res> get data {
  
  return $CreateInstantAidResponseModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [InstantAidApiFullResponse].
extension InstantAidApiFullResponsePatterns on InstantAidApiFullResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstantAidApiFullResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstantAidApiFullResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstantAidApiFullResponse value)  $default,){
final _that = this;
switch (_that) {
case _InstantAidApiFullResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstantAidApiFullResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InstantAidApiFullResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  CreateInstantAidResponseModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstantAidApiFullResponse() when $default != null:
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  CreateInstantAidResponseModel data)  $default,) {final _that = this;
switch (_that) {
case _InstantAidApiFullResponse():
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  CreateInstantAidResponseModel data)?  $default,) {final _that = this;
switch (_that) {
case _InstantAidApiFullResponse() when $default != null:
return $default(_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstantAidApiFullResponse implements InstantAidApiFullResponse {
  const _InstantAidApiFullResponse({required this.message, required this.data});
  factory _InstantAidApiFullResponse.fromJson(Map<String, dynamic> json) => _$InstantAidApiFullResponseFromJson(json);

@override final  String message;
@override final  CreateInstantAidResponseModel data;

/// Create a copy of InstantAidApiFullResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstantAidApiFullResponseCopyWith<_InstantAidApiFullResponse> get copyWith => __$InstantAidApiFullResponseCopyWithImpl<_InstantAidApiFullResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstantAidApiFullResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstantAidApiFullResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,data);

@override
String toString() {
  return 'InstantAidApiFullResponse(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$InstantAidApiFullResponseCopyWith<$Res> implements $InstantAidApiFullResponseCopyWith<$Res> {
  factory _$InstantAidApiFullResponseCopyWith(_InstantAidApiFullResponse value, $Res Function(_InstantAidApiFullResponse) _then) = __$InstantAidApiFullResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, CreateInstantAidResponseModel data
});


@override $CreateInstantAidResponseModelCopyWith<$Res> get data;

}
/// @nodoc
class __$InstantAidApiFullResponseCopyWithImpl<$Res>
    implements _$InstantAidApiFullResponseCopyWith<$Res> {
  __$InstantAidApiFullResponseCopyWithImpl(this._self, this._then);

  final _InstantAidApiFullResponse _self;
  final $Res Function(_InstantAidApiFullResponse) _then;

/// Create a copy of InstantAidApiFullResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? data = null,}) {
  return _then(_InstantAidApiFullResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateInstantAidResponseModel,
  ));
}

/// Create a copy of InstantAidApiFullResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateInstantAidResponseModelCopyWith<$Res> get data {
  
  return $CreateInstantAidResponseModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
