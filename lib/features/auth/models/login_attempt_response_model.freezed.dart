// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_attempt_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginAttemptResponseModel {

 int get id; String get identifier; String get type;
/// Create a copy of LoginAttemptResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginAttemptResponseModelCopyWith<LoginAttemptResponseModel> get copyWith => _$LoginAttemptResponseModelCopyWithImpl<LoginAttemptResponseModel>(this as LoginAttemptResponseModel, _$identity);

  /// Serializes this LoginAttemptResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginAttemptResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,identifier,type);

@override
String toString() {
  return 'LoginAttemptResponseModel(id: $id, identifier: $identifier, type: $type)';
}


}

/// @nodoc
abstract mixin class $LoginAttemptResponseModelCopyWith<$Res>  {
  factory $LoginAttemptResponseModelCopyWith(LoginAttemptResponseModel value, $Res Function(LoginAttemptResponseModel) _then) = _$LoginAttemptResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String identifier, String type
});




}
/// @nodoc
class _$LoginAttemptResponseModelCopyWithImpl<$Res>
    implements $LoginAttemptResponseModelCopyWith<$Res> {
  _$LoginAttemptResponseModelCopyWithImpl(this._self, this._then);

  final LoginAttemptResponseModel _self;
  final $Res Function(LoginAttemptResponseModel) _then;

/// Create a copy of LoginAttemptResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? identifier = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginAttemptResponseModel].
extension LoginAttemptResponseModelPatterns on LoginAttemptResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginAttemptResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginAttemptResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginAttemptResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginAttemptResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginAttemptResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginAttemptResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String identifier,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginAttemptResponseModel() when $default != null:
return $default(_that.id,_that.identifier,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String identifier,  String type)  $default,) {final _that = this;
switch (_that) {
case _LoginAttemptResponseModel():
return $default(_that.id,_that.identifier,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String identifier,  String type)?  $default,) {final _that = this;
switch (_that) {
case _LoginAttemptResponseModel() when $default != null:
return $default(_that.id,_that.identifier,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginAttemptResponseModel implements LoginAttemptResponseModel {
  const _LoginAttemptResponseModel({required this.id, required this.identifier, required this.type});
  factory _LoginAttemptResponseModel.fromJson(Map<String, dynamic> json) => _$LoginAttemptResponseModelFromJson(json);

@override final  int id;
@override final  String identifier;
@override final  String type;

/// Create a copy of LoginAttemptResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginAttemptResponseModelCopyWith<_LoginAttemptResponseModel> get copyWith => __$LoginAttemptResponseModelCopyWithImpl<_LoginAttemptResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginAttemptResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginAttemptResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,identifier,type);

@override
String toString() {
  return 'LoginAttemptResponseModel(id: $id, identifier: $identifier, type: $type)';
}


}

/// @nodoc
abstract mixin class _$LoginAttemptResponseModelCopyWith<$Res> implements $LoginAttemptResponseModelCopyWith<$Res> {
  factory _$LoginAttemptResponseModelCopyWith(_LoginAttemptResponseModel value, $Res Function(_LoginAttemptResponseModel) _then) = __$LoginAttemptResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String identifier, String type
});




}
/// @nodoc
class __$LoginAttemptResponseModelCopyWithImpl<$Res>
    implements _$LoginAttemptResponseModelCopyWith<$Res> {
  __$LoginAttemptResponseModelCopyWithImpl(this._self, this._then);

  final _LoginAttemptResponseModel _self;
  final $Res Function(_LoginAttemptResponseModel) _then;

/// Create a copy of LoginAttemptResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? identifier = null,Object? type = null,}) {
  return _then(_LoginAttemptResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
