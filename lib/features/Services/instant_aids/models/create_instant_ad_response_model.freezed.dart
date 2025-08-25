// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_instant_ad_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateInstantAdResponseModel {

 String get message;
/// Create a copy of CreateInstantAdResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInstantAdResponseModelCopyWith<CreateInstantAdResponseModel> get copyWith => _$CreateInstantAdResponseModelCopyWithImpl<CreateInstantAdResponseModel>(this as CreateInstantAdResponseModel, _$identity);

  /// Serializes this CreateInstantAdResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInstantAdResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateInstantAdResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateInstantAdResponseModelCopyWith<$Res>  {
  factory $CreateInstantAdResponseModelCopyWith(CreateInstantAdResponseModel value, $Res Function(CreateInstantAdResponseModel) _then) = _$CreateInstantAdResponseModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateInstantAdResponseModelCopyWithImpl<$Res>
    implements $CreateInstantAdResponseModelCopyWith<$Res> {
  _$CreateInstantAdResponseModelCopyWithImpl(this._self, this._then);

  final CreateInstantAdResponseModel _self;
  final $Res Function(CreateInstantAdResponseModel) _then;

/// Create a copy of CreateInstantAdResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateInstantAdResponseModel].
extension CreateInstantAdResponseModelPatterns on CreateInstantAdResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInstantAdResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInstantAdResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInstantAdResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAdResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInstantAdResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAdResponseModel() when $default != null:
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
case _CreateInstantAdResponseModel() when $default != null:
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
case _CreateInstantAdResponseModel():
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
case _CreateInstantAdResponseModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInstantAdResponseModel implements CreateInstantAdResponseModel {
  const _CreateInstantAdResponseModel({required this.message});
  factory _CreateInstantAdResponseModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAdResponseModelFromJson(json);

@override final  String message;

/// Create a copy of CreateInstantAdResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInstantAdResponseModelCopyWith<_CreateInstantAdResponseModel> get copyWith => __$CreateInstantAdResponseModelCopyWithImpl<_CreateInstantAdResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInstantAdResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInstantAdResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateInstantAdResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateInstantAdResponseModelCopyWith<$Res> implements $CreateInstantAdResponseModelCopyWith<$Res> {
  factory _$CreateInstantAdResponseModelCopyWith(_CreateInstantAdResponseModel value, $Res Function(_CreateInstantAdResponseModel) _then) = __$CreateInstantAdResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CreateInstantAdResponseModelCopyWithImpl<$Res>
    implements _$CreateInstantAdResponseModelCopyWith<$Res> {
  __$CreateInstantAdResponseModelCopyWithImpl(this._self, this._then);

  final _CreateInstantAdResponseModel _self;
  final $Res Function(_CreateInstantAdResponseModel) _then;

/// Create a copy of CreateInstantAdResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CreateInstantAdResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
