// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChildModel {

 int get id; String get name;@JsonKey(name: 'birth_date') String get birthDate; int get age; String get gender;@JsonKey(name: 'is_alive') bool get isAlive;@JsonKey(name: 'partner_name') String get partnerName;@JsonKey(name: 'residence_place') String get residencePlace;@JsonKey(name: 'courses_count') int get coursesCount;@JsonKey(name: 'active_courses_count') int get activeCoursesCount;
/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildModelCopyWith<ChildModel> get copyWith => _$ChildModelCopyWithImpl<ChildModel>(this as ChildModel, _$identity);

  /// Serializes this ChildModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isAlive, isAlive) || other.isAlive == isAlive)&&(identical(other.partnerName, partnerName) || other.partnerName == partnerName)&&(identical(other.residencePlace, residencePlace) || other.residencePlace == residencePlace)&&(identical(other.coursesCount, coursesCount) || other.coursesCount == coursesCount)&&(identical(other.activeCoursesCount, activeCoursesCount) || other.activeCoursesCount == activeCoursesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,birthDate,age,gender,isAlive,partnerName,residencePlace,coursesCount,activeCoursesCount);

@override
String toString() {
  return 'ChildModel(id: $id, name: $name, birthDate: $birthDate, age: $age, gender: $gender, isAlive: $isAlive, partnerName: $partnerName, residencePlace: $residencePlace, coursesCount: $coursesCount, activeCoursesCount: $activeCoursesCount)';
}


}

/// @nodoc
abstract mixin class $ChildModelCopyWith<$Res>  {
  factory $ChildModelCopyWith(ChildModel value, $Res Function(ChildModel) _then) = _$ChildModelCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'birth_date') String birthDate, int age, String gender,@JsonKey(name: 'is_alive') bool isAlive,@JsonKey(name: 'partner_name') String partnerName,@JsonKey(name: 'residence_place') String residencePlace,@JsonKey(name: 'courses_count') int coursesCount,@JsonKey(name: 'active_courses_count') int activeCoursesCount
});




}
/// @nodoc
class _$ChildModelCopyWithImpl<$Res>
    implements $ChildModelCopyWith<$Res> {
  _$ChildModelCopyWithImpl(this._self, this._then);

  final ChildModel _self;
  final $Res Function(ChildModel) _then;

/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? birthDate = null,Object? age = null,Object? gender = null,Object? isAlive = null,Object? partnerName = null,Object? residencePlace = null,Object? coursesCount = null,Object? activeCoursesCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isAlive: null == isAlive ? _self.isAlive : isAlive // ignore: cast_nullable_to_non_nullable
as bool,partnerName: null == partnerName ? _self.partnerName : partnerName // ignore: cast_nullable_to_non_nullable
as String,residencePlace: null == residencePlace ? _self.residencePlace : residencePlace // ignore: cast_nullable_to_non_nullable
as String,coursesCount: null == coursesCount ? _self.coursesCount : coursesCount // ignore: cast_nullable_to_non_nullable
as int,activeCoursesCount: null == activeCoursesCount ? _self.activeCoursesCount : activeCoursesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildModel].
extension ChildModelPatterns on ChildModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildModel value)  $default,){
final _that = this;
switch (_that) {
case _ChildModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'birth_date')  String birthDate,  int age,  String gender, @JsonKey(name: 'is_alive')  bool isAlive, @JsonKey(name: 'partner_name')  String partnerName, @JsonKey(name: 'residence_place')  String residencePlace, @JsonKey(name: 'courses_count')  int coursesCount, @JsonKey(name: 'active_courses_count')  int activeCoursesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
return $default(_that.id,_that.name,_that.birthDate,_that.age,_that.gender,_that.isAlive,_that.partnerName,_that.residencePlace,_that.coursesCount,_that.activeCoursesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'birth_date')  String birthDate,  int age,  String gender, @JsonKey(name: 'is_alive')  bool isAlive, @JsonKey(name: 'partner_name')  String partnerName, @JsonKey(name: 'residence_place')  String residencePlace, @JsonKey(name: 'courses_count')  int coursesCount, @JsonKey(name: 'active_courses_count')  int activeCoursesCount)  $default,) {final _that = this;
switch (_that) {
case _ChildModel():
return $default(_that.id,_that.name,_that.birthDate,_that.age,_that.gender,_that.isAlive,_that.partnerName,_that.residencePlace,_that.coursesCount,_that.activeCoursesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'birth_date')  String birthDate,  int age,  String gender, @JsonKey(name: 'is_alive')  bool isAlive, @JsonKey(name: 'partner_name')  String partnerName, @JsonKey(name: 'residence_place')  String residencePlace, @JsonKey(name: 'courses_count')  int coursesCount, @JsonKey(name: 'active_courses_count')  int activeCoursesCount)?  $default,) {final _that = this;
switch (_that) {
case _ChildModel() when $default != null:
return $default(_that.id,_that.name,_that.birthDate,_that.age,_that.gender,_that.isAlive,_that.partnerName,_that.residencePlace,_that.coursesCount,_that.activeCoursesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildModel implements ChildModel {
  const _ChildModel({required this.id, required this.name, @JsonKey(name: 'birth_date') required this.birthDate, required this.age, required this.gender, @JsonKey(name: 'is_alive') required this.isAlive, @JsonKey(name: 'partner_name') required this.partnerName, @JsonKey(name: 'residence_place') required this.residencePlace, @JsonKey(name: 'courses_count') required this.coursesCount, @JsonKey(name: 'active_courses_count') required this.activeCoursesCount});
  factory _ChildModel.fromJson(Map<String, dynamic> json) => _$ChildModelFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'birth_date') final  String birthDate;
@override final  int age;
@override final  String gender;
@override@JsonKey(name: 'is_alive') final  bool isAlive;
@override@JsonKey(name: 'partner_name') final  String partnerName;
@override@JsonKey(name: 'residence_place') final  String residencePlace;
@override@JsonKey(name: 'courses_count') final  int coursesCount;
@override@JsonKey(name: 'active_courses_count') final  int activeCoursesCount;

/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildModelCopyWith<_ChildModel> get copyWith => __$ChildModelCopyWithImpl<_ChildModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isAlive, isAlive) || other.isAlive == isAlive)&&(identical(other.partnerName, partnerName) || other.partnerName == partnerName)&&(identical(other.residencePlace, residencePlace) || other.residencePlace == residencePlace)&&(identical(other.coursesCount, coursesCount) || other.coursesCount == coursesCount)&&(identical(other.activeCoursesCount, activeCoursesCount) || other.activeCoursesCount == activeCoursesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,birthDate,age,gender,isAlive,partnerName,residencePlace,coursesCount,activeCoursesCount);

@override
String toString() {
  return 'ChildModel(id: $id, name: $name, birthDate: $birthDate, age: $age, gender: $gender, isAlive: $isAlive, partnerName: $partnerName, residencePlace: $residencePlace, coursesCount: $coursesCount, activeCoursesCount: $activeCoursesCount)';
}


}

/// @nodoc
abstract mixin class _$ChildModelCopyWith<$Res> implements $ChildModelCopyWith<$Res> {
  factory _$ChildModelCopyWith(_ChildModel value, $Res Function(_ChildModel) _then) = __$ChildModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'birth_date') String birthDate, int age, String gender,@JsonKey(name: 'is_alive') bool isAlive,@JsonKey(name: 'partner_name') String partnerName,@JsonKey(name: 'residence_place') String residencePlace,@JsonKey(name: 'courses_count') int coursesCount,@JsonKey(name: 'active_courses_count') int activeCoursesCount
});




}
/// @nodoc
class __$ChildModelCopyWithImpl<$Res>
    implements _$ChildModelCopyWith<$Res> {
  __$ChildModelCopyWithImpl(this._self, this._then);

  final _ChildModel _self;
  final $Res Function(_ChildModel) _then;

/// Create a copy of ChildModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? birthDate = null,Object? age = null,Object? gender = null,Object? isAlive = null,Object? partnerName = null,Object? residencePlace = null,Object? coursesCount = null,Object? activeCoursesCount = null,}) {
  return _then(_ChildModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isAlive: null == isAlive ? _self.isAlive : isAlive // ignore: cast_nullable_to_non_nullable
as bool,partnerName: null == partnerName ? _self.partnerName : partnerName // ignore: cast_nullable_to_non_nullable
as String,residencePlace: null == residencePlace ? _self.residencePlace : residencePlace // ignore: cast_nullable_to_non_nullable
as String,coursesCount: null == coursesCount ? _self.coursesCount : coursesCount // ignore: cast_nullable_to_non_nullable
as int,activeCoursesCount: null == activeCoursesCount ? _self.activeCoursesCount : activeCoursesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
