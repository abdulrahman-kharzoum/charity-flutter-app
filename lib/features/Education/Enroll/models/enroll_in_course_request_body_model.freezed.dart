// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll_in_course_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnrollInCourseRequestBodyModel {

 int get child_id; int get course_id;
/// Create a copy of EnrollInCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollInCourseRequestBodyModelCopyWith<EnrollInCourseRequestBodyModel> get copyWith => _$EnrollInCourseRequestBodyModelCopyWithImpl<EnrollInCourseRequestBodyModel>(this as EnrollInCourseRequestBodyModel, _$identity);

  /// Serializes this EnrollInCourseRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollInCourseRequestBodyModel&&(identical(other.child_id, child_id) || other.child_id == child_id)&&(identical(other.course_id, course_id) || other.course_id == course_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child_id,course_id);

@override
String toString() {
  return 'EnrollInCourseRequestBodyModel(child_id: $child_id, course_id: $course_id)';
}


}

/// @nodoc
abstract mixin class $EnrollInCourseRequestBodyModelCopyWith<$Res>  {
  factory $EnrollInCourseRequestBodyModelCopyWith(EnrollInCourseRequestBodyModel value, $Res Function(EnrollInCourseRequestBodyModel) _then) = _$EnrollInCourseRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 int child_id, int course_id
});




}
/// @nodoc
class _$EnrollInCourseRequestBodyModelCopyWithImpl<$Res>
    implements $EnrollInCourseRequestBodyModelCopyWith<$Res> {
  _$EnrollInCourseRequestBodyModelCopyWithImpl(this._self, this._then);

  final EnrollInCourseRequestBodyModel _self;
  final $Res Function(EnrollInCourseRequestBodyModel) _then;

/// Create a copy of EnrollInCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? child_id = null,Object? course_id = null,}) {
  return _then(_self.copyWith(
child_id: null == child_id ? _self.child_id : child_id // ignore: cast_nullable_to_non_nullable
as int,course_id: null == course_id ? _self.course_id : course_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollInCourseRequestBodyModel].
extension EnrollInCourseRequestBodyModelPatterns on EnrollInCourseRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollInCourseRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollInCourseRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollInCourseRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _EnrollInCourseRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollInCourseRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollInCourseRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int child_id,  int course_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollInCourseRequestBodyModel() when $default != null:
return $default(_that.child_id,_that.course_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int child_id,  int course_id)  $default,) {final _that = this;
switch (_that) {
case _EnrollInCourseRequestBodyModel():
return $default(_that.child_id,_that.course_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int child_id,  int course_id)?  $default,) {final _that = this;
switch (_that) {
case _EnrollInCourseRequestBodyModel() when $default != null:
return $default(_that.child_id,_that.course_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrollInCourseRequestBodyModel implements EnrollInCourseRequestBodyModel {
  const _EnrollInCourseRequestBodyModel({required this.child_id, required this.course_id});
  factory _EnrollInCourseRequestBodyModel.fromJson(Map<String, dynamic> json) => _$EnrollInCourseRequestBodyModelFromJson(json);

@override final  int child_id;
@override final  int course_id;

/// Create a copy of EnrollInCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollInCourseRequestBodyModelCopyWith<_EnrollInCourseRequestBodyModel> get copyWith => __$EnrollInCourseRequestBodyModelCopyWithImpl<_EnrollInCourseRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollInCourseRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollInCourseRequestBodyModel&&(identical(other.child_id, child_id) || other.child_id == child_id)&&(identical(other.course_id, course_id) || other.course_id == course_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child_id,course_id);

@override
String toString() {
  return 'EnrollInCourseRequestBodyModel(child_id: $child_id, course_id: $course_id)';
}


}

/// @nodoc
abstract mixin class _$EnrollInCourseRequestBodyModelCopyWith<$Res> implements $EnrollInCourseRequestBodyModelCopyWith<$Res> {
  factory _$EnrollInCourseRequestBodyModelCopyWith(_EnrollInCourseRequestBodyModel value, $Res Function(_EnrollInCourseRequestBodyModel) _then) = __$EnrollInCourseRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 int child_id, int course_id
});




}
/// @nodoc
class __$EnrollInCourseRequestBodyModelCopyWithImpl<$Res>
    implements _$EnrollInCourseRequestBodyModelCopyWith<$Res> {
  __$EnrollInCourseRequestBodyModelCopyWithImpl(this._self, this._then);

  final _EnrollInCourseRequestBodyModel _self;
  final $Res Function(_EnrollInCourseRequestBodyModel) _then;

/// Create a copy of EnrollInCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? child_id = null,Object? course_id = null,}) {
  return _then(_EnrollInCourseRequestBodyModel(
child_id: null == child_id ? _self.child_id : child_id // ignore: cast_nullable_to_non_nullable
as int,course_id: null == course_id ? _self.course_id : course_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
