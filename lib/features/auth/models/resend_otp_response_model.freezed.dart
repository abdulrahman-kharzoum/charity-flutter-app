// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResendOtpResponseModel {

 String get message;
/// Create a copy of ResendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpResponseModelCopyWith<ResendOtpResponseModel> get copyWith => _$ResendOtpResponseModelCopyWithImpl<ResendOtpResponseModel>(this as ResendOtpResponseModel, _$identity);

  /// Serializes this ResendOtpResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ResendOtpResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $ResendOtpResponseModelCopyWith<$Res>  {
  factory $ResendOtpResponseModelCopyWith(ResendOtpResponseModel value, $Res Function(ResendOtpResponseModel) _then) = _$ResendOtpResponseModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ResendOtpResponseModelCopyWithImpl<$Res>
    implements $ResendOtpResponseModelCopyWith<$Res> {
  _$ResendOtpResponseModelCopyWithImpl(this._self, this._then);

  final ResendOtpResponseModel _self;
  final $Res Function(ResendOtpResponseModel) _then;

/// Create a copy of ResendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResendOtpResponseModel].
extension ResendOtpResponseModelPatterns on ResendOtpResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResendOtpResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResendOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResendOtpResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ResendOtpResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResendOtpResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResendOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResendOtpResponseModel() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _ResendOtpResponseModel():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _ResendOtpResponseModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResendOtpResponseModel implements ResendOtpResponseModel {
  const _ResendOtpResponseModel({required this.message});
  factory _ResendOtpResponseModel.fromJson(Map<String, dynamic> json) => _$ResendOtpResponseModelFromJson(json);

@override final  String message;

/// Create a copy of ResendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendOtpResponseModelCopyWith<_ResendOtpResponseModel> get copyWith => __$ResendOtpResponseModelCopyWithImpl<_ResendOtpResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResendOtpResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendOtpResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ResendOtpResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResendOtpResponseModelCopyWith<$Res> implements $ResendOtpResponseModelCopyWith<$Res> {
  factory _$ResendOtpResponseModelCopyWith(_ResendOtpResponseModel value, $Res Function(_ResendOtpResponseModel) _then) = __$ResendOtpResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ResendOtpResponseModelCopyWithImpl<$Res>
    implements _$ResendOtpResponseModelCopyWith<$Res> {
  __$ResendOtpResponseModelCopyWithImpl(this._self, this._then);

  final _ResendOtpResponseModel _self;
  final $Res Function(_ResendOtpResponseModel) _then;

/// Create a copy of ResendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ResendOtpResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
