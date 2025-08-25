// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherModel {

 int get id;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'phone_number') String get phoneNumber; String get email;
/// Create a copy of TeacherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherModelCopyWith<TeacherModel> get copyWith => _$TeacherModelCopyWithImpl<TeacherModel>(this as TeacherModel, _$identity);

  /// Serializes this TeacherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,phoneNumber,email);

@override
String toString() {
  return 'TeacherModel(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email)';
}


}

/// @nodoc
abstract mixin class $TeacherModelCopyWith<$Res>  {
  factory $TeacherModelCopyWith(TeacherModel value, $Res Function(TeacherModel) _then) = _$TeacherModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'phone_number') String phoneNumber, String email
});




}
/// @nodoc
class _$TeacherModelCopyWithImpl<$Res>
    implements $TeacherModelCopyWith<$Res> {
  _$TeacherModelCopyWithImpl(this._self, this._then);

  final TeacherModel _self;
  final $Res Function(TeacherModel) _then;

/// Create a copy of TeacherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? phoneNumber = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherModel].
extension TeacherModelPatterns on TeacherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherModel value)  $default,){
final _that = this;
switch (_that) {
case _TeacherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherModel value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'phone_number')  String phoneNumber,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherModel() when $default != null:
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'phone_number')  String phoneNumber,  String email)  $default,) {final _that = this;
switch (_that) {
case _TeacherModel():
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'phone_number')  String phoneNumber,  String email)?  $default,) {final _that = this;
switch (_that) {
case _TeacherModel() when $default != null:
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherModel implements TeacherModel {
  const _TeacherModel({required this.id, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'phone_number') required this.phoneNumber, required this.email});
  factory _TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override final  String email;

/// Create a copy of TeacherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherModelCopyWith<_TeacherModel> get copyWith => __$TeacherModelCopyWithImpl<_TeacherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,phoneNumber,email);

@override
String toString() {
  return 'TeacherModel(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email)';
}


}

/// @nodoc
abstract mixin class _$TeacherModelCopyWith<$Res> implements $TeacherModelCopyWith<$Res> {
  factory _$TeacherModelCopyWith(_TeacherModel value, $Res Function(_TeacherModel) _then) = __$TeacherModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'phone_number') String phoneNumber, String email
});




}
/// @nodoc
class __$TeacherModelCopyWithImpl<$Res>
    implements _$TeacherModelCopyWith<$Res> {
  __$TeacherModelCopyWithImpl(this._self, this._then);

  final _TeacherModel _self;
  final $Res Function(_TeacherModel) _then;

/// Create a copy of TeacherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? phoneNumber = null,Object? email = null,}) {
  return _then(_TeacherModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
