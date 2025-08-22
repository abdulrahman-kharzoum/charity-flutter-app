// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_attempt_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginAttemptRequestBodyModel {

 String get phone_number; String get fcm_token;
/// Create a copy of LoginAttemptRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginAttemptRequestBodyModelCopyWith<LoginAttemptRequestBodyModel> get copyWith => _$LoginAttemptRequestBodyModelCopyWithImpl<LoginAttemptRequestBodyModel>(this as LoginAttemptRequestBodyModel, _$identity);

  /// Serializes this LoginAttemptRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginAttemptRequestBodyModel&&(identical(other.phone_number, phone_number) || other.phone_number == phone_number)&&(identical(other.fcm_token, fcm_token) || other.fcm_token == fcm_token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone_number,fcm_token);

@override
String toString() {
  return 'LoginAttemptRequestBodyModel(phone_number: $phone_number, fcm_token: $fcm_token)';
}


}

/// @nodoc
abstract mixin class $LoginAttemptRequestBodyModelCopyWith<$Res>  {
  factory $LoginAttemptRequestBodyModelCopyWith(LoginAttemptRequestBodyModel value, $Res Function(LoginAttemptRequestBodyModel) _then) = _$LoginAttemptRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String phone_number, String fcm_token
});




}
/// @nodoc
class _$LoginAttemptRequestBodyModelCopyWithImpl<$Res>
    implements $LoginAttemptRequestBodyModelCopyWith<$Res> {
  _$LoginAttemptRequestBodyModelCopyWithImpl(this._self, this._then);

  final LoginAttemptRequestBodyModel _self;
  final $Res Function(LoginAttemptRequestBodyModel) _then;

/// Create a copy of LoginAttemptRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone_number = null,Object? fcm_token = null,}) {
  return _then(_self.copyWith(
phone_number: null == phone_number ? _self.phone_number : phone_number // ignore: cast_nullable_to_non_nullable
as String,fcm_token: null == fcm_token ? _self.fcm_token : fcm_token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginAttemptRequestBodyModel].
extension LoginAttemptRequestBodyModelPatterns on LoginAttemptRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginAttemptRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginAttemptRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginAttemptRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginAttemptRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginAttemptRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginAttemptRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone_number,  String fcm_token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginAttemptRequestBodyModel() when $default != null:
return $default(_that.phone_number,_that.fcm_token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone_number,  String fcm_token)  $default,) {final _that = this;
switch (_that) {
case _LoginAttemptRequestBodyModel():
return $default(_that.phone_number,_that.fcm_token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone_number,  String fcm_token)?  $default,) {final _that = this;
switch (_that) {
case _LoginAttemptRequestBodyModel() when $default != null:
return $default(_that.phone_number,_that.fcm_token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginAttemptRequestBodyModel implements LoginAttemptRequestBodyModel {
  const _LoginAttemptRequestBodyModel({required this.phone_number, required this.fcm_token});
  factory _LoginAttemptRequestBodyModel.fromJson(Map<String, dynamic> json) => _$LoginAttemptRequestBodyModelFromJson(json);

@override final  String phone_number;
@override final  String fcm_token;

/// Create a copy of LoginAttemptRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginAttemptRequestBodyModelCopyWith<_LoginAttemptRequestBodyModel> get copyWith => __$LoginAttemptRequestBodyModelCopyWithImpl<_LoginAttemptRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginAttemptRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginAttemptRequestBodyModel&&(identical(other.phone_number, phone_number) || other.phone_number == phone_number)&&(identical(other.fcm_token, fcm_token) || other.fcm_token == fcm_token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone_number,fcm_token);

@override
String toString() {
  return 'LoginAttemptRequestBodyModel(phone_number: $phone_number, fcm_token: $fcm_token)';
}


}

/// @nodoc
abstract mixin class _$LoginAttemptRequestBodyModelCopyWith<$Res> implements $LoginAttemptRequestBodyModelCopyWith<$Res> {
  factory _$LoginAttemptRequestBodyModelCopyWith(_LoginAttemptRequestBodyModel value, $Res Function(_LoginAttemptRequestBodyModel) _then) = __$LoginAttemptRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String phone_number, String fcm_token
});




}
/// @nodoc
class __$LoginAttemptRequestBodyModelCopyWithImpl<$Res>
    implements _$LoginAttemptRequestBodyModelCopyWith<$Res> {
  __$LoginAttemptRequestBodyModelCopyWithImpl(this._self, this._then);

  final _LoginAttemptRequestBodyModel _self;
  final $Res Function(_LoginAttemptRequestBodyModel) _then;

/// Create a copy of LoginAttemptRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone_number = null,Object? fcm_token = null,}) {
  return _then(_LoginAttemptRequestBodyModel(
phone_number: null == phone_number ? _self.phone_number : phone_number // ignore: cast_nullable_to_non_nullable
as String,fcm_token: null == fcm_token ? _self.fcm_token : fcm_token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
