// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnrollmentResponseModel {

 int get id; String get status;@JsonKey(name: 'enrollment_date') String get enrollmentDate;@JsonKey(name: 'final_grade') String? get finalGrade;@JsonKey(name: 'ai_course_summery') String? get aiCourseSummery;@JsonKey(name: 'child_id') int get childId;@JsonKey(name: 'course_id') int get courseId;
/// Create a copy of EnrollmentResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentResponseModelCopyWith<EnrollmentResponseModel> get copyWith => _$EnrollmentResponseModelCopyWithImpl<EnrollmentResponseModel>(this as EnrollmentResponseModel, _$identity);

  /// Serializes this EnrollmentResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.enrollmentDate, enrollmentDate) || other.enrollmentDate == enrollmentDate)&&(identical(other.finalGrade, finalGrade) || other.finalGrade == finalGrade)&&(identical(other.aiCourseSummery, aiCourseSummery) || other.aiCourseSummery == aiCourseSummery)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.courseId, courseId) || other.courseId == courseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,enrollmentDate,finalGrade,aiCourseSummery,childId,courseId);

@override
String toString() {
  return 'EnrollmentResponseModel(id: $id, status: $status, enrollmentDate: $enrollmentDate, finalGrade: $finalGrade, aiCourseSummery: $aiCourseSummery, childId: $childId, courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $EnrollmentResponseModelCopyWith<$Res>  {
  factory $EnrollmentResponseModelCopyWith(EnrollmentResponseModel value, $Res Function(EnrollmentResponseModel) _then) = _$EnrollmentResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String status,@JsonKey(name: 'enrollment_date') String enrollmentDate,@JsonKey(name: 'final_grade') String? finalGrade,@JsonKey(name: 'ai_course_summery') String? aiCourseSummery,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'course_id') int courseId
});




}
/// @nodoc
class _$EnrollmentResponseModelCopyWithImpl<$Res>
    implements $EnrollmentResponseModelCopyWith<$Res> {
  _$EnrollmentResponseModelCopyWithImpl(this._self, this._then);

  final EnrollmentResponseModel _self;
  final $Res Function(EnrollmentResponseModel) _then;

/// Create a copy of EnrollmentResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? enrollmentDate = null,Object? finalGrade = freezed,Object? aiCourseSummery = freezed,Object? childId = null,Object? courseId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,enrollmentDate: null == enrollmentDate ? _self.enrollmentDate : enrollmentDate // ignore: cast_nullable_to_non_nullable
as String,finalGrade: freezed == finalGrade ? _self.finalGrade : finalGrade // ignore: cast_nullable_to_non_nullable
as String?,aiCourseSummery: freezed == aiCourseSummery ? _self.aiCourseSummery : aiCourseSummery // ignore: cast_nullable_to_non_nullable
as String?,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollmentResponseModel].
extension EnrollmentResponseModelPatterns on EnrollmentResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollmentResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollmentResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _EnrollmentResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollmentResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollmentResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String status, @JsonKey(name: 'enrollment_date')  String enrollmentDate, @JsonKey(name: 'final_grade')  String? finalGrade, @JsonKey(name: 'ai_course_summery')  String? aiCourseSummery, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'course_id')  int courseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentResponseModel() when $default != null:
return $default(_that.id,_that.status,_that.enrollmentDate,_that.finalGrade,_that.aiCourseSummery,_that.childId,_that.courseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String status, @JsonKey(name: 'enrollment_date')  String enrollmentDate, @JsonKey(name: 'final_grade')  String? finalGrade, @JsonKey(name: 'ai_course_summery')  String? aiCourseSummery, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'course_id')  int courseId)  $default,) {final _that = this;
switch (_that) {
case _EnrollmentResponseModel():
return $default(_that.id,_that.status,_that.enrollmentDate,_that.finalGrade,_that.aiCourseSummery,_that.childId,_that.courseId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String status, @JsonKey(name: 'enrollment_date')  String enrollmentDate, @JsonKey(name: 'final_grade')  String? finalGrade, @JsonKey(name: 'ai_course_summery')  String? aiCourseSummery, @JsonKey(name: 'child_id')  int childId, @JsonKey(name: 'course_id')  int courseId)?  $default,) {final _that = this;
switch (_that) {
case _EnrollmentResponseModel() when $default != null:
return $default(_that.id,_that.status,_that.enrollmentDate,_that.finalGrade,_that.aiCourseSummery,_that.childId,_that.courseId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnrollmentResponseModel implements EnrollmentResponseModel {
  const _EnrollmentResponseModel({required this.id, required this.status, @JsonKey(name: 'enrollment_date') required this.enrollmentDate, @JsonKey(name: 'final_grade') required this.finalGrade, @JsonKey(name: 'ai_course_summery') required this.aiCourseSummery, @JsonKey(name: 'child_id') required this.childId, @JsonKey(name: 'course_id') required this.courseId});
  factory _EnrollmentResponseModel.fromJson(Map<String, dynamic> json) => _$EnrollmentResponseModelFromJson(json);

@override final  int id;
@override final  String status;
@override@JsonKey(name: 'enrollment_date') final  String enrollmentDate;
@override@JsonKey(name: 'final_grade') final  String? finalGrade;
@override@JsonKey(name: 'ai_course_summery') final  String? aiCourseSummery;
@override@JsonKey(name: 'child_id') final  int childId;
@override@JsonKey(name: 'course_id') final  int courseId;

/// Create a copy of EnrollmentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentResponseModelCopyWith<_EnrollmentResponseModel> get copyWith => __$EnrollmentResponseModelCopyWithImpl<_EnrollmentResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.enrollmentDate, enrollmentDate) || other.enrollmentDate == enrollmentDate)&&(identical(other.finalGrade, finalGrade) || other.finalGrade == finalGrade)&&(identical(other.aiCourseSummery, aiCourseSummery) || other.aiCourseSummery == aiCourseSummery)&&(identical(other.childId, childId) || other.childId == childId)&&(identical(other.courseId, courseId) || other.courseId == courseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,enrollmentDate,finalGrade,aiCourseSummery,childId,courseId);

@override
String toString() {
  return 'EnrollmentResponseModel(id: $id, status: $status, enrollmentDate: $enrollmentDate, finalGrade: $finalGrade, aiCourseSummery: $aiCourseSummery, childId: $childId, courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentResponseModelCopyWith<$Res> implements $EnrollmentResponseModelCopyWith<$Res> {
  factory _$EnrollmentResponseModelCopyWith(_EnrollmentResponseModel value, $Res Function(_EnrollmentResponseModel) _then) = __$EnrollmentResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String status,@JsonKey(name: 'enrollment_date') String enrollmentDate,@JsonKey(name: 'final_grade') String? finalGrade,@JsonKey(name: 'ai_course_summery') String? aiCourseSummery,@JsonKey(name: 'child_id') int childId,@JsonKey(name: 'course_id') int courseId
});




}
/// @nodoc
class __$EnrollmentResponseModelCopyWithImpl<$Res>
    implements _$EnrollmentResponseModelCopyWith<$Res> {
  __$EnrollmentResponseModelCopyWithImpl(this._self, this._then);

  final _EnrollmentResponseModel _self;
  final $Res Function(_EnrollmentResponseModel) _then;

/// Create a copy of EnrollmentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? enrollmentDate = null,Object? finalGrade = freezed,Object? aiCourseSummery = freezed,Object? childId = null,Object? courseId = null,}) {
  return _then(_EnrollmentResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,enrollmentDate: null == enrollmentDate ? _self.enrollmentDate : enrollmentDate // ignore: cast_nullable_to_non_nullable
as String,finalGrade: freezed == finalGrade ? _self.finalGrade : finalGrade // ignore: cast_nullable_to_non_nullable
as String?,aiCourseSummery: freezed == aiCourseSummery ? _self.aiCourseSummery : aiCourseSummery // ignore: cast_nullable_to_non_nullable
as String?,childId: null == childId ? _self.childId : childId // ignore: cast_nullable_to_non_nullable
as int,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
