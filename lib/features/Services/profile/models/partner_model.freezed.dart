// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PartnerModel {

 int get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get job; String get gender;@JsonKey(name: 'health_status') String get healthStatus;
/// Create a copy of PartnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartnerModelCopyWith<PartnerModel> get copyWith => _$PartnerModelCopyWithImpl<PartnerModel>(this as PartnerModel, _$identity);

  /// Serializes this PartnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartnerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.job, job) || other.job == job)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,job,gender,healthStatus);

@override
String toString() {
  return 'PartnerModel(id: $id, firstName: $firstName, lastName: $lastName, job: $job, gender: $gender, healthStatus: $healthStatus)';
}


}

/// @nodoc
abstract mixin class $PartnerModelCopyWith<$Res>  {
  factory $PartnerModelCopyWith(PartnerModel value, $Res Function(PartnerModel) _then) = _$PartnerModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String job, String gender,@JsonKey(name: 'health_status') String healthStatus
});




}
/// @nodoc
class _$PartnerModelCopyWithImpl<$Res>
    implements $PartnerModelCopyWith<$Res> {
  _$PartnerModelCopyWithImpl(this._self, this._then);

  final PartnerModel _self;
  final $Res Function(PartnerModel) _then;

/// Create a copy of PartnerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? job = null,Object? gender = null,Object? healthStatus = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PartnerModel].
extension PartnerModelPatterns on PartnerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PartnerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PartnerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PartnerModel value)  $default,){
final _that = this;
switch (_that) {
case _PartnerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PartnerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PartnerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String job,  String gender, @JsonKey(name: 'health_status')  String healthStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartnerModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.job,_that.gender,_that.healthStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String job,  String gender, @JsonKey(name: 'health_status')  String healthStatus)  $default,) {final _that = this;
switch (_that) {
case _PartnerModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.job,_that.gender,_that.healthStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String job,  String gender, @JsonKey(name: 'health_status')  String healthStatus)?  $default,) {final _that = this;
switch (_that) {
case _PartnerModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.job,_that.gender,_that.healthStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PartnerModel implements PartnerModel {
  const _PartnerModel({required this.id, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.job, required this.gender, @JsonKey(name: 'health_status') required this.healthStatus});
  factory _PartnerModel.fromJson(Map<String, dynamic> json) => _$PartnerModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String job;
@override final  String gender;
@override@JsonKey(name: 'health_status') final  String healthStatus;

/// Create a copy of PartnerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartnerModelCopyWith<_PartnerModel> get copyWith => __$PartnerModelCopyWithImpl<_PartnerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartnerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartnerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.job, job) || other.job == job)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,job,gender,healthStatus);

@override
String toString() {
  return 'PartnerModel(id: $id, firstName: $firstName, lastName: $lastName, job: $job, gender: $gender, healthStatus: $healthStatus)';
}


}

/// @nodoc
abstract mixin class _$PartnerModelCopyWith<$Res> implements $PartnerModelCopyWith<$Res> {
  factory _$PartnerModelCopyWith(_PartnerModel value, $Res Function(_PartnerModel) _then) = __$PartnerModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String job, String gender,@JsonKey(name: 'health_status') String healthStatus
});




}
/// @nodoc
class __$PartnerModelCopyWithImpl<$Res>
    implements _$PartnerModelCopyWith<$Res> {
  __$PartnerModelCopyWithImpl(this._self, this._then);

  final _PartnerModel _self;
  final $Res Function(_PartnerModel) _then;

/// Create a copy of PartnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? job = null,Object? gender = null,Object? healthStatus = null,}) {
  return _then(_PartnerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
