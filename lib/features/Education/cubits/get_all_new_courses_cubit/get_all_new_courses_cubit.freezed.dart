// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_new_courses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllNewCoursesState {

 SubmissionStatus get status; List<CourseModel>? get data; Failure? get failure;
/// Create a copy of GetAllNewCoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllNewCoursesStateCopyWith<GetAllNewCoursesState> get copyWith => _$GetAllNewCoursesStateCopyWithImpl<GetAllNewCoursesState>(this as GetAllNewCoursesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllNewCoursesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),failure);

@override
String toString() {
  return 'GetAllNewCoursesState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GetAllNewCoursesStateCopyWith<$Res>  {
  factory $GetAllNewCoursesStateCopyWith(GetAllNewCoursesState value, $Res Function(GetAllNewCoursesState) _then) = _$GetAllNewCoursesStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, List<CourseModel>? data, Failure? failure
});




}
/// @nodoc
class _$GetAllNewCoursesStateCopyWithImpl<$Res>
    implements $GetAllNewCoursesStateCopyWith<$Res> {
  _$GetAllNewCoursesStateCopyWithImpl(this._self, this._then);

  final GetAllNewCoursesState _self;
  final $Res Function(GetAllNewCoursesState) _then;

/// Create a copy of GetAllNewCoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CourseModel>?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAllNewCoursesState].
extension GetAllNewCoursesStatePatterns on GetAllNewCoursesState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  List<CourseModel>? data,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  List<CourseModel>? data,  Failure? failure)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  List<CourseModel>? data,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements GetAllNewCoursesState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, final  List<CourseModel>? data, this.failure}): _data = data;
  

@override@JsonKey() final  SubmissionStatus status;
 final  List<CourseModel>? _data;
@override List<CourseModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Failure? failure;

/// Create a copy of GetAllNewCoursesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),failure);

@override
String toString() {
  return 'GetAllNewCoursesState(status: $status, data: $data, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $GetAllNewCoursesStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, List<CourseModel>? data, Failure? failure
});




}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of GetAllNewCoursesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CourseModel>?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
