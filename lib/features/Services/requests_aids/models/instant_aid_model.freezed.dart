// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instant_aid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InstantAidModel {

 int get id; double get amount; String get reason;@JsonKey(name: 'request_status') String get requestStatus;@JsonKey(name: 'urgency_level') String get urgencyLevel;@JsonKey(name: 'received_at') String get receivedAt;
/// Create a copy of InstantAidModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstantAidModelCopyWith<InstantAidModel> get copyWith => _$InstantAidModelCopyWithImpl<InstantAidModel>(this as InstantAidModel, _$identity);

  /// Serializes this InstantAidModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstantAidModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.urgencyLevel, urgencyLevel) || other.urgencyLevel == urgencyLevel)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,reason,requestStatus,urgencyLevel,receivedAt);

@override
String toString() {
  return 'InstantAidModel(id: $id, amount: $amount, reason: $reason, requestStatus: $requestStatus, urgencyLevel: $urgencyLevel, receivedAt: $receivedAt)';
}


}

/// @nodoc
abstract mixin class $InstantAidModelCopyWith<$Res>  {
  factory $InstantAidModelCopyWith(InstantAidModel value, $Res Function(InstantAidModel) _then) = _$InstantAidModelCopyWithImpl;
@useResult
$Res call({
 int id, double amount, String reason,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'urgency_level') String urgencyLevel,@JsonKey(name: 'received_at') String receivedAt
});




}
/// @nodoc
class _$InstantAidModelCopyWithImpl<$Res>
    implements $InstantAidModelCopyWith<$Res> {
  _$InstantAidModelCopyWithImpl(this._self, this._then);

  final InstantAidModel _self;
  final $Res Function(InstantAidModel) _then;

/// Create a copy of InstantAidModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? reason = null,Object? requestStatus = null,Object? urgencyLevel = null,Object? receivedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,urgencyLevel: null == urgencyLevel ? _self.urgencyLevel : urgencyLevel // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InstantAidModel].
extension InstantAidModelPatterns on InstantAidModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstantAidModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstantAidModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstantAidModel value)  $default,){
final _that = this;
switch (_that) {
case _InstantAidModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstantAidModel value)?  $default,){
final _that = this;
switch (_that) {
case _InstantAidModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double amount,  String reason, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'received_at')  String receivedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstantAidModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double amount,  String reason, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'received_at')  String receivedAt)  $default,) {final _that = this;
switch (_that) {
case _InstantAidModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double amount,  String reason, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'received_at')  String receivedAt)?  $default,) {final _that = this;
switch (_that) {
case _InstantAidModel() when $default != null:
return $default(_that.id,_that.amount,_that.reason,_that.requestStatus,_that.urgencyLevel,_that.receivedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstantAidModel implements InstantAidModel {
  const _InstantAidModel({required this.id, required this.amount, required this.reason, @JsonKey(name: 'request_status') required this.requestStatus, @JsonKey(name: 'urgency_level') required this.urgencyLevel, @JsonKey(name: 'received_at') required this.receivedAt});
  factory _InstantAidModel.fromJson(Map<String, dynamic> json) => _$InstantAidModelFromJson(json);

@override final  int id;
@override final  double amount;
@override final  String reason;
@override@JsonKey(name: 'request_status') final  String requestStatus;
@override@JsonKey(name: 'urgency_level') final  String urgencyLevel;
@override@JsonKey(name: 'received_at') final  String receivedAt;

/// Create a copy of InstantAidModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstantAidModelCopyWith<_InstantAidModel> get copyWith => __$InstantAidModelCopyWithImpl<_InstantAidModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstantAidModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstantAidModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.urgencyLevel, urgencyLevel) || other.urgencyLevel == urgencyLevel)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,reason,requestStatus,urgencyLevel,receivedAt);

@override
String toString() {
  return 'InstantAidModel(id: $id, amount: $amount, reason: $reason, requestStatus: $requestStatus, urgencyLevel: $urgencyLevel, receivedAt: $receivedAt)';
}


}

/// @nodoc
abstract mixin class _$InstantAidModelCopyWith<$Res> implements $InstantAidModelCopyWith<$Res> {
  factory _$InstantAidModelCopyWith(_InstantAidModel value, $Res Function(_InstantAidModel) _then) = __$InstantAidModelCopyWithImpl;
@override @useResult
$Res call({
 int id, double amount, String reason,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'urgency_level') String urgencyLevel,@JsonKey(name: 'received_at') String receivedAt
});




}
/// @nodoc
class __$InstantAidModelCopyWithImpl<$Res>
    implements _$InstantAidModelCopyWith<$Res> {
  __$InstantAidModelCopyWithImpl(this._self, this._then);

  final _InstantAidModel _self;
  final $Res Function(_InstantAidModel) _then;

/// Create a copy of InstantAidModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? reason = null,Object? requestStatus = null,Object? urgencyLevel = null,Object? receivedAt = null,}) {
  return _then(_InstantAidModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,urgencyLevel: null == urgencyLevel ? _self.urgencyLevel : urgencyLevel // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
