// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestModel {

 int get id; String get status; String get reason;@JsonKey(name: 'request_type') String get requestType; EntityModel get entity;
/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestModelCopyWith<RequestModel> get copyWith => _$RequestModelCopyWithImpl<RequestModel>(this as RequestModel, _$identity);

  /// Serializes this RequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.requestType, requestType) || other.requestType == requestType)&&(identical(other.entity, entity) || other.entity == entity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,reason,requestType,entity);

@override
String toString() {
  return 'RequestModel(id: $id, status: $status, reason: $reason, requestType: $requestType, entity: $entity)';
}


}

/// @nodoc
abstract mixin class $RequestModelCopyWith<$Res>  {
  factory $RequestModelCopyWith(RequestModel value, $Res Function(RequestModel) _then) = _$RequestModelCopyWithImpl;
@useResult
$Res call({
 int id, String status, String reason,@JsonKey(name: 'request_type') String requestType, EntityModel entity
});


$EntityModelCopyWith<$Res> get entity;

}
/// @nodoc
class _$RequestModelCopyWithImpl<$Res>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._self, this._then);

  final RequestModel _self;
  final $Res Function(RequestModel) _then;

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? reason = null,Object? requestType = null,Object? entity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,requestType: null == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as String,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as EntityModel,
  ));
}
/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityModelCopyWith<$Res> get entity {
  
  return $EntityModelCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}


/// Adds pattern-matching-related methods to [RequestModel].
extension RequestModelPatterns on RequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String status,  String reason, @JsonKey(name: 'request_type')  String requestType,  EntityModel entity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestModel() when $default != null:
return $default(_that.id,_that.status,_that.reason,_that.requestType,_that.entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String status,  String reason, @JsonKey(name: 'request_type')  String requestType,  EntityModel entity)  $default,) {final _that = this;
switch (_that) {
case _RequestModel():
return $default(_that.id,_that.status,_that.reason,_that.requestType,_that.entity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String status,  String reason, @JsonKey(name: 'request_type')  String requestType,  EntityModel entity)?  $default,) {final _that = this;
switch (_that) {
case _RequestModel() when $default != null:
return $default(_that.id,_that.status,_that.reason,_that.requestType,_that.entity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestModel implements RequestModel {
  const _RequestModel({required this.id, required this.status, required this.reason, @JsonKey(name: 'request_type') required this.requestType, required this.entity});
  factory _RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);

@override final  int id;
@override final  String status;
@override final  String reason;
@override@JsonKey(name: 'request_type') final  String requestType;
@override final  EntityModel entity;

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestModelCopyWith<_RequestModel> get copyWith => __$RequestModelCopyWithImpl<_RequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.requestType, requestType) || other.requestType == requestType)&&(identical(other.entity, entity) || other.entity == entity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,reason,requestType,entity);

@override
String toString() {
  return 'RequestModel(id: $id, status: $status, reason: $reason, requestType: $requestType, entity: $entity)';
}


}

/// @nodoc
abstract mixin class _$RequestModelCopyWith<$Res> implements $RequestModelCopyWith<$Res> {
  factory _$RequestModelCopyWith(_RequestModel value, $Res Function(_RequestModel) _then) = __$RequestModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String status, String reason,@JsonKey(name: 'request_type') String requestType, EntityModel entity
});


@override $EntityModelCopyWith<$Res> get entity;

}
/// @nodoc
class __$RequestModelCopyWithImpl<$Res>
    implements _$RequestModelCopyWith<$Res> {
  __$RequestModelCopyWithImpl(this._self, this._then);

  final _RequestModel _self;
  final $Res Function(_RequestModel) _then;

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? reason = null,Object? requestType = null,Object? entity = null,}) {
  return _then(_RequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,requestType: null == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as String,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as EntityModel,
  ));
}

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityModelCopyWith<$Res> get entity {
  
  return $EntityModelCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}

// dart format on
