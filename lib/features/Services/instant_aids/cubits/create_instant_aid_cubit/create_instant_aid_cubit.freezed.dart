// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_instant_aid_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateInstantAidState {

 SubmissionStatus get status; InstantAidApiFullResponse? get data; Failure? get failure;
/// Create a copy of CreateInstantAidState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInstantAidStateCopyWith<CreateInstantAidState> get copyWith => _$CreateInstantAidStateCopyWithImpl<CreateInstantAidState>(this as CreateInstantAidState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInstantAidState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure);

@override
String toString() {
  return 'CreateInstantAidState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CreateInstantAidStateCopyWith<$Res>  {
  factory $CreateInstantAidStateCopyWith(CreateInstantAidState value, $Res Function(CreateInstantAidState) _then) = _$CreateInstantAidStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, InstantAidApiFullResponse? data, Failure? failure
});


$InstantAidApiFullResponseCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreateInstantAidStateCopyWithImpl<$Res>
    implements $CreateInstantAidStateCopyWith<$Res> {
  _$CreateInstantAidStateCopyWithImpl(this._self, this._then);

  final CreateInstantAidState _self;
  final $Res Function(CreateInstantAidState) _then;

/// Create a copy of CreateInstantAidState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InstantAidApiFullResponse?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of CreateInstantAidState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstantAidApiFullResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $InstantAidApiFullResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateInstantAidState].
extension CreateInstantAidStatePatterns on CreateInstantAidState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInstantAidState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInstantAidState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInstantAidState value)  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAidState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInstantAidState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAidState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  InstantAidApiFullResponse? data,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateInstantAidState() when $default != null:
return $default(_that.status,_that.data,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  InstantAidApiFullResponse? data,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _CreateInstantAidState():
return $default(_that.status,_that.data,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  InstantAidApiFullResponse? data,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _CreateInstantAidState() when $default != null:
return $default(_that.status,_that.data,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _CreateInstantAidState implements CreateInstantAidState {
  const _CreateInstantAidState({this.status = SubmissionStatus.initial, this.data, this.failure});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  InstantAidApiFullResponse? data;
@override final  Failure? failure;

/// Create a copy of CreateInstantAidState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInstantAidStateCopyWith<_CreateInstantAidState> get copyWith => __$CreateInstantAidStateCopyWithImpl<_CreateInstantAidState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInstantAidState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure);

@override
String toString() {
  return 'CreateInstantAidState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$CreateInstantAidStateCopyWith<$Res> implements $CreateInstantAidStateCopyWith<$Res> {
  factory _$CreateInstantAidStateCopyWith(_CreateInstantAidState value, $Res Function(_CreateInstantAidState) _then) = __$CreateInstantAidStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, InstantAidApiFullResponse? data, Failure? failure
});


@override $InstantAidApiFullResponseCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateInstantAidStateCopyWithImpl<$Res>
    implements _$CreateInstantAidStateCopyWith<$Res> {
  __$CreateInstantAidStateCopyWithImpl(this._self, this._then);

  final _CreateInstantAidState _self;
  final $Res Function(_CreateInstantAidState) _then;

/// Create a copy of CreateInstantAidState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_CreateInstantAidState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InstantAidApiFullResponse?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of CreateInstantAidState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstantAidApiFullResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $InstantAidApiFullResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
