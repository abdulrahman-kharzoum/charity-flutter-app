// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationHomeModel {

 List<ChildModel> get children;@JsonKey(name: 'newCourses') List<CourseModel> get newCourses;
/// Create a copy of EducationHomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationHomeModelCopyWith<EducationHomeModel> get copyWith => _$EducationHomeModelCopyWithImpl<EducationHomeModel>(this as EducationHomeModel, _$identity);

  /// Serializes this EducationHomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationHomeModel&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.newCourses, newCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(newCourses));

@override
String toString() {
  return 'EducationHomeModel(children: $children, newCourses: $newCourses)';
}


}

/// @nodoc
abstract mixin class $EducationHomeModelCopyWith<$Res>  {
  factory $EducationHomeModelCopyWith(EducationHomeModel value, $Res Function(EducationHomeModel) _then) = _$EducationHomeModelCopyWithImpl;
@useResult
$Res call({
 List<ChildModel> children,@JsonKey(name: 'newCourses') List<CourseModel> newCourses
});




}
/// @nodoc
class _$EducationHomeModelCopyWithImpl<$Res>
    implements $EducationHomeModelCopyWith<$Res> {
  _$EducationHomeModelCopyWithImpl(this._self, this._then);

  final EducationHomeModel _self;
  final $Res Function(EducationHomeModel) _then;

/// Create a copy of EducationHomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? children = null,Object? newCourses = null,}) {
  return _then(_self.copyWith(
children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<ChildModel>,newCourses: null == newCourses ? _self.newCourses : newCourses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationHomeModel].
extension EducationHomeModelPatterns on EducationHomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationHomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationHomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationHomeModel value)  $default,){
final _that = this;
switch (_that) {
case _EducationHomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationHomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EducationHomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChildModel> children, @JsonKey(name: 'newCourses')  List<CourseModel> newCourses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationHomeModel() when $default != null:
return $default(_that.children,_that.newCourses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChildModel> children, @JsonKey(name: 'newCourses')  List<CourseModel> newCourses)  $default,) {final _that = this;
switch (_that) {
case _EducationHomeModel():
return $default(_that.children,_that.newCourses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChildModel> children, @JsonKey(name: 'newCourses')  List<CourseModel> newCourses)?  $default,) {final _that = this;
switch (_that) {
case _EducationHomeModel() when $default != null:
return $default(_that.children,_that.newCourses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationHomeModel implements EducationHomeModel {
  const _EducationHomeModel({required final  List<ChildModel> children, @JsonKey(name: 'newCourses') required final  List<CourseModel> newCourses}): _children = children,_newCourses = newCourses;
  factory _EducationHomeModel.fromJson(Map<String, dynamic> json) => _$EducationHomeModelFromJson(json);

 final  List<ChildModel> _children;
@override List<ChildModel> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}

 final  List<CourseModel> _newCourses;
@override@JsonKey(name: 'newCourses') List<CourseModel> get newCourses {
  if (_newCourses is EqualUnmodifiableListView) return _newCourses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_newCourses);
}


/// Create a copy of EducationHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationHomeModelCopyWith<_EducationHomeModel> get copyWith => __$EducationHomeModelCopyWithImpl<_EducationHomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationHomeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationHomeModel&&const DeepCollectionEquality().equals(other._children, _children)&&const DeepCollectionEquality().equals(other._newCourses, _newCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_children),const DeepCollectionEquality().hash(_newCourses));

@override
String toString() {
  return 'EducationHomeModel(children: $children, newCourses: $newCourses)';
}


}

/// @nodoc
abstract mixin class _$EducationHomeModelCopyWith<$Res> implements $EducationHomeModelCopyWith<$Res> {
  factory _$EducationHomeModelCopyWith(_EducationHomeModel value, $Res Function(_EducationHomeModel) _then) = __$EducationHomeModelCopyWithImpl;
@override @useResult
$Res call({
 List<ChildModel> children,@JsonKey(name: 'newCourses') List<CourseModel> newCourses
});




}
/// @nodoc
class __$EducationHomeModelCopyWithImpl<$Res>
    implements _$EducationHomeModelCopyWith<$Res> {
  __$EducationHomeModelCopyWithImpl(this._self, this._then);

  final _EducationHomeModel _self;
  final $Res Function(_EducationHomeModel) _then;

/// Create a copy of EducationHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? children = null,Object? newCourses = null,}) {
  return _then(_EducationHomeModel(
children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<ChildModel>,newCourses: null == newCourses ? _self._newCourses : newCourses // ignore: cast_nullable_to_non_nullable
as List<CourseModel>,
  ));
}


}

// dart format on
