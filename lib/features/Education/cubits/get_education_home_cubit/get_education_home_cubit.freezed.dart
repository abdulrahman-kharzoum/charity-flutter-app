// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_education_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetEducationHomeState {

 SubmissionStatus get status; EducationHomeModel? get data; Failure? get failure;
/// Create a copy of GetEducationHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetEducationHomeStateCopyWith<GetEducationHomeState> get copyWith => _$GetEducationHomeStateCopyWithImpl<GetEducationHomeState>(this as GetEducationHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetEducationHomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure);

@override
String toString() {
  return 'GetEducationHomeState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GetEducationHomeStateCopyWith<$Res>  {
  factory $GetEducationHomeStateCopyWith(GetEducationHomeState value, $Res Function(GetEducationHomeState) _then) = _$GetEducationHomeStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, EducationHomeModel? data, Failure? failure
});


$EducationHomeModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$GetEducationHomeStateCopyWithImpl<$Res>
    implements $GetEducationHomeStateCopyWith<$Res> {
  _$GetEducationHomeStateCopyWithImpl(this._self, this._then);

  final GetEducationHomeState _self;
  final $Res Function(GetEducationHomeState) _then;

/// Create a copy of GetEducationHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EducationHomeModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of GetEducationHomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EducationHomeModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EducationHomeModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetEducationHomeState].
extension GetEducationHomeStatePatterns on GetEducationHomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetEducationHomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetEducationHomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetEducationHomeState value)  $default,){
final _that = this;
switch (_that) {
case _GetEducationHomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetEducationHomeState value)?  $default,){
final _that = this;
switch (_that) {
case _GetEducationHomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  EducationHomeModel? data,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetEducationHomeState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  EducationHomeModel? data,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _GetEducationHomeState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  EducationHomeModel? data,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _GetEducationHomeState() when $default != null:
return $default(_that.status,_that.data,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _GetEducationHomeState implements GetEducationHomeState {
  const _GetEducationHomeState({this.status = SubmissionStatus.initial, this.data, this.failure});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  EducationHomeModel? data;
@override final  Failure? failure;

/// Create a copy of GetEducationHomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEducationHomeStateCopyWith<_GetEducationHomeState> get copyWith => __$GetEducationHomeStateCopyWithImpl<_GetEducationHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEducationHomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure);

@override
String toString() {
  return 'GetEducationHomeState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetEducationHomeStateCopyWith<$Res> implements $GetEducationHomeStateCopyWith<$Res> {
  factory _$GetEducationHomeStateCopyWith(_GetEducationHomeState value, $Res Function(_GetEducationHomeState) _then) = __$GetEducationHomeStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, EducationHomeModel? data, Failure? failure
});


@override $EducationHomeModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$GetEducationHomeStateCopyWithImpl<$Res>
    implements _$GetEducationHomeStateCopyWith<$Res> {
  __$GetEducationHomeStateCopyWithImpl(this._self, this._then);

  final _GetEducationHomeState _self;
  final $Res Function(_GetEducationHomeState) _then;

/// Create a copy of GetEducationHomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_GetEducationHomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EducationHomeModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of GetEducationHomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EducationHomeModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EducationHomeModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
