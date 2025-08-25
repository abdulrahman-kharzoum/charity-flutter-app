// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_instant_aid_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateInstantAidRequestBodyModel {

 int get amount; String get reason; int get beneficiary_id;@JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty) String? get received_at; String get urgency_level;
/// Create a copy of CreateInstantAidRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInstantAidRequestBodyModelCopyWith<CreateInstantAidRequestBodyModel> get copyWith => _$CreateInstantAidRequestBodyModelCopyWithImpl<CreateInstantAidRequestBodyModel>(this as CreateInstantAidRequestBodyModel, _$identity);

  /// Serializes this CreateInstantAidRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInstantAidRequestBodyModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.beneficiary_id, beneficiary_id) || other.beneficiary_id == beneficiary_id)&&(identical(other.received_at, received_at) || other.received_at == received_at)&&(identical(other.urgency_level, urgency_level) || other.urgency_level == urgency_level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,reason,beneficiary_id,received_at,urgency_level);

@override
String toString() {
  return 'CreateInstantAidRequestBodyModel(amount: $amount, reason: $reason, beneficiary_id: $beneficiary_id, received_at: $received_at, urgency_level: $urgency_level)';
}


}

/// @nodoc
abstract mixin class $CreateInstantAidRequestBodyModelCopyWith<$Res>  {
  factory $CreateInstantAidRequestBodyModelCopyWith(CreateInstantAidRequestBodyModel value, $Res Function(CreateInstantAidRequestBodyModel) _then) = _$CreateInstantAidRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 int amount, String reason, int beneficiary_id,@JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty) String? received_at, String urgency_level
});




}
/// @nodoc
class _$CreateInstantAidRequestBodyModelCopyWithImpl<$Res>
    implements $CreateInstantAidRequestBodyModelCopyWith<$Res> {
  _$CreateInstantAidRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateInstantAidRequestBodyModel _self;
  final $Res Function(CreateInstantAidRequestBodyModel) _then;

/// Create a copy of CreateInstantAidRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? reason = null,Object? beneficiary_id = null,Object? received_at = freezed,Object? urgency_level = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,beneficiary_id: null == beneficiary_id ? _self.beneficiary_id : beneficiary_id // ignore: cast_nullable_to_non_nullable
as int,received_at: freezed == received_at ? _self.received_at : received_at // ignore: cast_nullable_to_non_nullable
as String?,urgency_level: null == urgency_level ? _self.urgency_level : urgency_level // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateInstantAidRequestBodyModel].
extension CreateInstantAidRequestBodyModelPatterns on CreateInstantAidRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInstantAidRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInstantAidRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInstantAidRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAidRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInstantAidRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInstantAidRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  String reason,  int beneficiary_id, @JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty)  String? received_at,  String urgency_level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateInstantAidRequestBodyModel() when $default != null:
return $default(_that.amount,_that.reason,_that.beneficiary_id,_that.received_at,_that.urgency_level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  String reason,  int beneficiary_id, @JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty)  String? received_at,  String urgency_level)  $default,) {final _that = this;
switch (_that) {
case _CreateInstantAidRequestBodyModel():
return $default(_that.amount,_that.reason,_that.beneficiary_id,_that.received_at,_that.urgency_level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  String reason,  int beneficiary_id, @JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty)  String? received_at,  String urgency_level)?  $default,) {final _that = this;
switch (_that) {
case _CreateInstantAidRequestBodyModel() when $default != null:
return $default(_that.amount,_that.reason,_that.beneficiary_id,_that.received_at,_that.urgency_level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInstantAidRequestBodyModel implements CreateInstantAidRequestBodyModel {
  const _CreateInstantAidRequestBodyModel({required this.amount, required this.reason, required this.beneficiary_id, @JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty) this.received_at, required this.urgency_level});
  factory _CreateInstantAidRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateInstantAidRequestBodyModelFromJson(json);

@override final  int amount;
@override final  String reason;
@override final  int beneficiary_id;
@override@JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty) final  String? received_at;
@override final  String urgency_level;

/// Create a copy of CreateInstantAidRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInstantAidRequestBodyModelCopyWith<_CreateInstantAidRequestBodyModel> get copyWith => __$CreateInstantAidRequestBodyModelCopyWithImpl<_CreateInstantAidRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInstantAidRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInstantAidRequestBodyModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.beneficiary_id, beneficiary_id) || other.beneficiary_id == beneficiary_id)&&(identical(other.received_at, received_at) || other.received_at == received_at)&&(identical(other.urgency_level, urgency_level) || other.urgency_level == urgency_level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,reason,beneficiary_id,received_at,urgency_level);

@override
String toString() {
  return 'CreateInstantAidRequestBodyModel(amount: $amount, reason: $reason, beneficiary_id: $beneficiary_id, received_at: $received_at, urgency_level: $urgency_level)';
}


}

/// @nodoc
abstract mixin class _$CreateInstantAidRequestBodyModelCopyWith<$Res> implements $CreateInstantAidRequestBodyModelCopyWith<$Res> {
  factory _$CreateInstantAidRequestBodyModelCopyWith(_CreateInstantAidRequestBodyModel value, $Res Function(_CreateInstantAidRequestBodyModel) _then) = __$CreateInstantAidRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 int amount, String reason, int beneficiary_id,@JsonKey(includeIfNull: false, toJson: _toNullableNonEmpty) String? received_at, String urgency_level
});




}
/// @nodoc
class __$CreateInstantAidRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateInstantAidRequestBodyModelCopyWith<$Res> {
  __$CreateInstantAidRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateInstantAidRequestBodyModel _self;
  final $Res Function(_CreateInstantAidRequestBodyModel) _then;

/// Create a copy of CreateInstantAidRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? reason = null,Object? beneficiary_id = null,Object? received_at = freezed,Object? urgency_level = null,}) {
  return _then(_CreateInstantAidRequestBodyModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,beneficiary_id: null == beneficiary_id ? _self.beneficiary_id : beneficiary_id // ignore: cast_nullable_to_non_nullable
as int,received_at: freezed == received_at ? _self.received_at : received_at // ignore: cast_nullable_to_non_nullable
as String?,urgency_level: null == urgency_level ? _self.urgency_level : urgency_level // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
