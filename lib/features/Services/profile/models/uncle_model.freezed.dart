// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uncle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UncleModel {

 int get id; String get from;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get job;@JsonKey(name: 'provided_aid') String get providedAid;
/// Create a copy of UncleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UncleModelCopyWith<UncleModel> get copyWith => _$UncleModelCopyWithImpl<UncleModel>(this as UncleModel, _$identity);

  /// Serializes this UncleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UncleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.from, from) || other.from == from)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.job, job) || other.job == job)&&(identical(other.providedAid, providedAid) || other.providedAid == providedAid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,from,firstName,lastName,job,providedAid);

@override
String toString() {
  return 'UncleModel(id: $id, from: $from, firstName: $firstName, lastName: $lastName, job: $job, providedAid: $providedAid)';
}


}

/// @nodoc
abstract mixin class $UncleModelCopyWith<$Res>  {
  factory $UncleModelCopyWith(UncleModel value, $Res Function(UncleModel) _then) = _$UncleModelCopyWithImpl;
@useResult
$Res call({
 int id, String from,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String job,@JsonKey(name: 'provided_aid') String providedAid
});




}
/// @nodoc
class _$UncleModelCopyWithImpl<$Res>
    implements $UncleModelCopyWith<$Res> {
  _$UncleModelCopyWithImpl(this._self, this._then);

  final UncleModel _self;
  final $Res Function(UncleModel) _then;

/// Create a copy of UncleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? from = null,Object? firstName = null,Object? lastName = null,Object? job = null,Object? providedAid = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,providedAid: null == providedAid ? _self.providedAid : providedAid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UncleModel].
extension UncleModelPatterns on UncleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UncleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UncleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UncleModel value)  $default,){
final _that = this;
switch (_that) {
case _UncleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UncleModel value)?  $default,){
final _that = this;
switch (_that) {
case _UncleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String from, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String job, @JsonKey(name: 'provided_aid')  String providedAid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UncleModel() when $default != null:
return $default(_that.id,_that.from,_that.firstName,_that.lastName,_that.job,_that.providedAid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String from, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String job, @JsonKey(name: 'provided_aid')  String providedAid)  $default,) {final _that = this;
switch (_that) {
case _UncleModel():
return $default(_that.id,_that.from,_that.firstName,_that.lastName,_that.job,_that.providedAid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String from, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String job, @JsonKey(name: 'provided_aid')  String providedAid)?  $default,) {final _that = this;
switch (_that) {
case _UncleModel() when $default != null:
return $default(_that.id,_that.from,_that.firstName,_that.lastName,_that.job,_that.providedAid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UncleModel implements UncleModel {
  const _UncleModel({required this.id, required this.from, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.job, @JsonKey(name: 'provided_aid') required this.providedAid});
  factory _UncleModel.fromJson(Map<String, dynamic> json) => _$UncleModelFromJson(json);

@override final  int id;
@override final  String from;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String job;
@override@JsonKey(name: 'provided_aid') final  String providedAid;

/// Create a copy of UncleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UncleModelCopyWith<_UncleModel> get copyWith => __$UncleModelCopyWithImpl<_UncleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UncleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UncleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.from, from) || other.from == from)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.job, job) || other.job == job)&&(identical(other.providedAid, providedAid) || other.providedAid == providedAid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,from,firstName,lastName,job,providedAid);

@override
String toString() {
  return 'UncleModel(id: $id, from: $from, firstName: $firstName, lastName: $lastName, job: $job, providedAid: $providedAid)';
}


}

/// @nodoc
abstract mixin class _$UncleModelCopyWith<$Res> implements $UncleModelCopyWith<$Res> {
  factory _$UncleModelCopyWith(_UncleModel value, $Res Function(_UncleModel) _then) = __$UncleModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String from,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String job,@JsonKey(name: 'provided_aid') String providedAid
});




}
/// @nodoc
class __$UncleModelCopyWithImpl<$Res>
    implements _$UncleModelCopyWith<$Res> {
  __$UncleModelCopyWithImpl(this._self, this._then);

  final _UncleModel _self;
  final $Res Function(_UncleModel) _then;

/// Create a copy of UncleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? from = null,Object? firstName = null,Object? lastName = null,Object? job = null,Object? providedAid = null,}) {
  return _then(_UncleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,providedAid: null == providedAid ? _self.providedAid : providedAid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
