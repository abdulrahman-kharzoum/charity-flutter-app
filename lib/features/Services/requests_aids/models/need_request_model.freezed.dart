// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'need_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NeedRequestModel {

 int get id; String get item; int get amount; String get reason;@JsonKey(name: 'urgency_level') String get urgencyLevel;@JsonKey(name: 'request_status') String get requestStatus;@JsonKey(name: 'received_at') String? get receivedAt;@JsonKey(name: 'description') String? get description;
/// Create a copy of NeedRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NeedRequestModelCopyWith<NeedRequestModel> get copyWith => _$NeedRequestModelCopyWithImpl<NeedRequestModel>(this as NeedRequestModel, _$identity);

  /// Serializes this NeedRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeedRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.item, item) || other.item == item)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.urgencyLevel, urgencyLevel) || other.urgencyLevel == urgencyLevel)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,item,amount,reason,urgencyLevel,requestStatus,receivedAt,description);

@override
String toString() {
  return 'NeedRequestModel(id: $id, item: $item, amount: $amount, reason: $reason, urgencyLevel: $urgencyLevel, requestStatus: $requestStatus, receivedAt: $receivedAt, description: $description)';
}


}

/// @nodoc
abstract mixin class $NeedRequestModelCopyWith<$Res>  {
  factory $NeedRequestModelCopyWith(NeedRequestModel value, $Res Function(NeedRequestModel) _then) = _$NeedRequestModelCopyWithImpl;
@useResult
$Res call({
 int id, String item, int amount, String reason,@JsonKey(name: 'urgency_level') String urgencyLevel,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'received_at') String? receivedAt,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class _$NeedRequestModelCopyWithImpl<$Res>
    implements $NeedRequestModelCopyWith<$Res> {
  _$NeedRequestModelCopyWithImpl(this._self, this._then);

  final NeedRequestModel _self;
  final $Res Function(NeedRequestModel) _then;

/// Create a copy of NeedRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? item = null,Object? amount = null,Object? reason = null,Object? urgencyLevel = null,Object? requestStatus = null,Object? receivedAt = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,urgencyLevel: null == urgencyLevel ? _self.urgencyLevel : urgencyLevel // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NeedRequestModel].
extension NeedRequestModelPatterns on NeedRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NeedRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NeedRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NeedRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _NeedRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NeedRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _NeedRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String item,  int amount,  String reason, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'received_at')  String? receivedAt, @JsonKey(name: 'description')  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NeedRequestModel() when $default != null:
return $default(_that.id,_that.item,_that.amount,_that.reason,_that.urgencyLevel,_that.requestStatus,_that.receivedAt,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String item,  int amount,  String reason, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'received_at')  String? receivedAt, @JsonKey(name: 'description')  String? description)  $default,) {final _that = this;
switch (_that) {
case _NeedRequestModel():
return $default(_that.id,_that.item,_that.amount,_that.reason,_that.urgencyLevel,_that.requestStatus,_that.receivedAt,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String item,  int amount,  String reason, @JsonKey(name: 'urgency_level')  String urgencyLevel, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'received_at')  String? receivedAt, @JsonKey(name: 'description')  String? description)?  $default,) {final _that = this;
switch (_that) {
case _NeedRequestModel() when $default != null:
return $default(_that.id,_that.item,_that.amount,_that.reason,_that.urgencyLevel,_that.requestStatus,_that.receivedAt,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NeedRequestModel implements NeedRequestModel {
  const _NeedRequestModel({required this.id, required this.item, required this.amount, required this.reason, @JsonKey(name: 'urgency_level') required this.urgencyLevel, @JsonKey(name: 'request_status') required this.requestStatus, @JsonKey(name: 'received_at') required this.receivedAt, @JsonKey(name: 'description') this.description});
  factory _NeedRequestModel.fromJson(Map<String, dynamic> json) => _$NeedRequestModelFromJson(json);

@override final  int id;
@override final  String item;
@override final  int amount;
@override final  String reason;
@override@JsonKey(name: 'urgency_level') final  String urgencyLevel;
@override@JsonKey(name: 'request_status') final  String requestStatus;
@override@JsonKey(name: 'received_at') final  String? receivedAt;
@override@JsonKey(name: 'description') final  String? description;

/// Create a copy of NeedRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NeedRequestModelCopyWith<_NeedRequestModel> get copyWith => __$NeedRequestModelCopyWithImpl<_NeedRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NeedRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NeedRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.item, item) || other.item == item)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.urgencyLevel, urgencyLevel) || other.urgencyLevel == urgencyLevel)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,item,amount,reason,urgencyLevel,requestStatus,receivedAt,description);

@override
String toString() {
  return 'NeedRequestModel(id: $id, item: $item, amount: $amount, reason: $reason, urgencyLevel: $urgencyLevel, requestStatus: $requestStatus, receivedAt: $receivedAt, description: $description)';
}


}

/// @nodoc
abstract mixin class _$NeedRequestModelCopyWith<$Res> implements $NeedRequestModelCopyWith<$Res> {
  factory _$NeedRequestModelCopyWith(_NeedRequestModel value, $Res Function(_NeedRequestModel) _then) = __$NeedRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String item, int amount, String reason,@JsonKey(name: 'urgency_level') String urgencyLevel,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'received_at') String? receivedAt,@JsonKey(name: 'description') String? description
});




}
/// @nodoc
class __$NeedRequestModelCopyWithImpl<$Res>
    implements _$NeedRequestModelCopyWith<$Res> {
  __$NeedRequestModelCopyWithImpl(this._self, this._then);

  final _NeedRequestModel _self;
  final $Res Function(_NeedRequestModel) _then;

/// Create a copy of NeedRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? item = null,Object? amount = null,Object? reason = null,Object? urgencyLevel = null,Object? requestStatus = null,Object? receivedAt = freezed,Object? description = freezed,}) {
  return _then(_NeedRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,urgencyLevel: null == urgencyLevel ? _self.urgencyLevel : urgencyLevel // ignore: cast_nullable_to_non_nullable
as String,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
