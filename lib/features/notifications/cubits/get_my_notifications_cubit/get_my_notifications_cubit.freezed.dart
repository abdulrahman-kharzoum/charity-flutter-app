// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetMyNotificationsState {

 SubmissionStatus get status; List<NotificationModel>? get data; Failure? get failure;
/// Create a copy of GetMyNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyNotificationsStateCopyWith<GetMyNotificationsState> get copyWith => _$GetMyNotificationsStateCopyWithImpl<GetMyNotificationsState>(this as GetMyNotificationsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyNotificationsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),failure);

@override
String toString() {
  return 'GetMyNotificationsState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GetMyNotificationsStateCopyWith<$Res>  {
  factory $GetMyNotificationsStateCopyWith(GetMyNotificationsState value, $Res Function(GetMyNotificationsState) _then) = _$GetMyNotificationsStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, List<NotificationModel>? data, Failure? failure
});




}
/// @nodoc
class _$GetMyNotificationsStateCopyWithImpl<$Res>
    implements $GetMyNotificationsStateCopyWith<$Res> {
  _$GetMyNotificationsStateCopyWithImpl(this._self, this._then);

  final GetMyNotificationsState _self;
  final $Res Function(GetMyNotificationsState) _then;

/// Create a copy of GetMyNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationModel>?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMyNotificationsState].
extension GetMyNotificationsStatePatterns on GetMyNotificationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMyNotificationsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyNotificationsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMyNotificationsState value)  $default,){
final _that = this;
switch (_that) {
case _GetMyNotificationsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMyNotificationsState value)?  $default,){
final _that = this;
switch (_that) {
case _GetMyNotificationsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  List<NotificationModel>? data,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyNotificationsState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  List<NotificationModel>? data,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _GetMyNotificationsState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  List<NotificationModel>? data,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _GetMyNotificationsState() when $default != null:
return $default(_that.status,_that.data,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _GetMyNotificationsState implements GetMyNotificationsState {
  const _GetMyNotificationsState({this.status = SubmissionStatus.initial, final  List<NotificationModel>? data, this.failure}): _data = data;
  

@override@JsonKey() final  SubmissionStatus status;
 final  List<NotificationModel>? _data;
@override List<NotificationModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Failure? failure;

/// Create a copy of GetMyNotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyNotificationsStateCopyWith<_GetMyNotificationsState> get copyWith => __$GetMyNotificationsStateCopyWithImpl<_GetMyNotificationsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyNotificationsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),failure);

@override
String toString() {
  return 'GetMyNotificationsState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetMyNotificationsStateCopyWith<$Res> implements $GetMyNotificationsStateCopyWith<$Res> {
  factory _$GetMyNotificationsStateCopyWith(_GetMyNotificationsState value, $Res Function(_GetMyNotificationsState) _then) = __$GetMyNotificationsStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, List<NotificationModel>? data, Failure? failure
});




}
/// @nodoc
class __$GetMyNotificationsStateCopyWithImpl<$Res>
    implements _$GetMyNotificationsStateCopyWith<$Res> {
  __$GetMyNotificationsStateCopyWithImpl(this._self, this._then);

  final _GetMyNotificationsState _self;
  final $Res Function(_GetMyNotificationsState) _then;

/// Create a copy of GetMyNotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_GetMyNotificationsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationModel>?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
