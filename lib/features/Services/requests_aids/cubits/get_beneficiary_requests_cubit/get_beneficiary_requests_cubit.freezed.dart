// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_beneficiary_requests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetBeneficiaryRequestsState {

 SubmissionStatus get status; BeneficiaryRequestsModel? get data; Failure? get failure;
/// Create a copy of GetBeneficiaryRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBeneficiaryRequestsStateCopyWith<GetBeneficiaryRequestsState> get copyWith => _$GetBeneficiaryRequestsStateCopyWithImpl<GetBeneficiaryRequestsState>(this as GetBeneficiaryRequestsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBeneficiaryRequestsState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure);

@override
String toString() {
  return 'GetBeneficiaryRequestsState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GetBeneficiaryRequestsStateCopyWith<$Res>  {
  factory $GetBeneficiaryRequestsStateCopyWith(GetBeneficiaryRequestsState value, $Res Function(GetBeneficiaryRequestsState) _then) = _$GetBeneficiaryRequestsStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, BeneficiaryRequestsModel? data, Failure? failure
});


$BeneficiaryRequestsModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$GetBeneficiaryRequestsStateCopyWithImpl<$Res>
    implements $GetBeneficiaryRequestsStateCopyWith<$Res> {
  _$GetBeneficiaryRequestsStateCopyWithImpl(this._self, this._then);

  final GetBeneficiaryRequestsState _self;
  final $Res Function(GetBeneficiaryRequestsState) _then;

/// Create a copy of GetBeneficiaryRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BeneficiaryRequestsModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of GetBeneficiaryRequestsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryRequestsModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BeneficiaryRequestsModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetBeneficiaryRequestsState].
extension GetBeneficiaryRequestsStatePatterns on GetBeneficiaryRequestsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTeacherState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTeacherState value)  $default,){
final _that = this;
switch (_that) {
case _CreateTeacherState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTeacherState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  BeneficiaryRequestsModel? data,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  BeneficiaryRequestsModel? data,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  BeneficiaryRequestsModel? data,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements GetBeneficiaryRequestsState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, this.data, this.failure});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  BeneficiaryRequestsModel? data;
@override final  Failure? failure;

/// Create a copy of GetBeneficiaryRequestsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure);

@override
String toString() {
  return 'GetBeneficiaryRequestsState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $GetBeneficiaryRequestsStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, BeneficiaryRequestsModel? data, Failure? failure
});


@override $BeneficiaryRequestsModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of GetBeneficiaryRequestsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BeneficiaryRequestsModel?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of GetBeneficiaryRequestsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryRequestsModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BeneficiaryRequestsModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
