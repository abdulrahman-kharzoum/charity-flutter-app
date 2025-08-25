// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_instant_aid_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateInstantAidResponseModel {

 int get id; int get amount; String get reason;@JsonKey(name: 'request_status') String get requestStatus;@JsonKey(name: 'urgency_level') String get urgencyLevel;@JsonKey(name: 'received_at') String? get receivedAt;
/// Create a copy of CreateInstantAidResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInstantAidResponseModelCopyWith<CreateInstantAidResponseModel> get copyWith => _$CreateInstantAidResponseModelCopyWithImpl<CreateInstantAidResponseModel>(this as CreateInstantAidResponseModel, _$identity);

  /// Serializes this CreateInstantAidResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInstantAidResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.urgencyLevel, urgencyLevel) || other.urgencyLevel == urgencyLevel)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,reason,requestStatus,urgencyLevel,receivedAt);

@override
String toString() {
  return 'CreateInstantAidResponseModel(id: $id, amount: $amount, reason: $reason, requestStatus: $requestStatus, urgencyLevel: $urgencyLevel, receivedAt: $receivedAt)';
}


}

/// @nodoc
abstract mixin class $CreateInstantAidResponseModelCopyWith<$Res>  {
  factory $CreateInstantAidResponseModelCopyWith(CreateInstantAidResponseModel value, $Res Function(CreateInstantAidResponseModel) _then) = _$CreateInstantAidResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, int amount, String reason,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'urgency_level') String urgencyLevel,@JsonKey(name: 'received_at') String? receivedAt
});




}
/// @nodoc
class _$CreateInstantAidResponseModelCopyWithImpl<$Res>
    implements $CreateInstantAidResponseModelCopyWith<$Res> {
  _$CreateInstantAidResponseModelCopyWithImpl(this._self, this._then);

  final CreateInstantAidResponseModel _self;
  final $Res Function(CreateInstantAidResponseModel) _then;

/// Create a copy of CreateInstantAidResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? reason = null,Object? requestStatus = null,Object? urgencyLevel = null,Object? receivedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,urgencyLevel: null == urgencyLevel ? _self.urgencyLevel : urgencyLevel // ignore: cast_nullable_to_non_nullable
as String,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateInstantAidResponseModel].
extension CreateInstantAidResponseModelPatterns on CreateInstantAidResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInstantAidResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInstantAidResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInstantAidResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAidResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInstantAidResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAidResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount,  String reason, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'received_at')  String? receivedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateInstantAidResponseModel() when $default != null:
return $default(_that.id,_that.amount,_that.reason,_that.requestStatus,_that.urgencyLevel,_that.receivedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount,  String reason, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'received_at')  String? receivedAt)  $default,) {final _that = this;
switch (_that) {
case _CreateInstantAidResponseModel():
return $default(_that.id,_that.amount,_that.reason,_that.requestStatus,_that.urgencyLevel,_that.receivedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount,  String reason, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'received_at')  String? receivedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateInstantAidResponseModel() when $default != null:
return $default(_that.id,_that.amount,_that.reason,_that.requestStatus,_that.urgencyLevel,_that.receivedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInstantAidResponseModel implements CreateInstantAidResponseModel {
  const _CreateInstantAidResponseModel({required this.id, required this.amount, required this.reason, @JsonKey(name: 'request_status') required this.requestStatus, @JsonKey(name: 'urgency_level') required this.urgencyLevel, @JsonKey(name: 'received_at') required this.receivedAt});
  factory _CreateInstantAidResponseModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAidResponseModelFromJson(json);

@override final  int id;
@override final  int amount;
@override final  String reason;
@override@JsonKey(name: 'request_status') final  String requestStatus;
@override@JsonKey(name: 'urgency_level') final  String urgencyLevel;
@override@JsonKey(name: 'received_at') final  String? receivedAt;

/// Create a copy of CreateInstantAidResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInstantAidResponseModelCopyWith<_CreateInstantAidResponseModel> get copyWith => __$CreateInstantAidResponseModelCopyWithImpl<_CreateInstantAidResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInstantAidResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInstantAidResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.urgencyLevel, urgencyLevel) || other.urgencyLevel == urgencyLevel)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,reason,requestStatus,urgencyLevel,receivedAt);

@override
String toString() {
  return 'CreateInstantAidResponseModel(id: $id, amount: $amount, reason: $reason, requestStatus: $requestStatus, urgencyLevel: $urgencyLevel, receivedAt: $receivedAt)';
}


}

/// @nodoc
abstract mixin class _$CreateInstantAidResponseModelCopyWith<$Res> implements $CreateInstantAidResponseModelCopyWith<$Res> {
  factory _$CreateInstantAidResponseModelCopyWith(_CreateInstantAidResponseModel value, $Res Function(_CreateInstantAidResponseModel) _then) = __$CreateInstantAidResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, String reason,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'urgency_level') String urgencyLevel,@JsonKey(name: 'received_at') String? receivedAt
});




}
/// @nodoc
class __$CreateInstantAidResponseModelCopyWithImpl<$Res>
    implements _$CreateInstantAidResponseModelCopyWith<$Res> {
  __$CreateInstantAidResponseModelCopyWithImpl(this._self, this._then);

  final _CreateInstantAidResponseModel _self;
  final $Res Function(_CreateInstantAidResponseModel) _then;

/// Create a copy of CreateInstantAidResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? reason = null,Object? requestStatus = null,Object? urgencyLevel = null,Object? receivedAt = freezed,}) {
  return _then(_CreateInstantAidResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,urgencyLevel: null == urgencyLevel ? _self.urgencyLevel : urgencyLevel // ignore: cast_nullable_to_non_nullable
as String,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
