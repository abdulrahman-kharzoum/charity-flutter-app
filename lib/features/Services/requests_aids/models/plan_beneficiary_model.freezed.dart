// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanBeneficiaryModel {

@JsonKey(name: 'pivot_id') int get pivotId;@JsonKey(name: 'beneficiary_id') int get beneficiaryId;@JsonKey(name: 'is_turn') int get isTurn;@JsonKey(name: 'turn_until') String get turnUntil;@JsonKey(name: 'received_at') String get receivedAt;@JsonKey(name: 'has_taken') bool get hasTaken;
/// Create a copy of PlanBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanBeneficiaryModelCopyWith<PlanBeneficiaryModel> get copyWith => _$PlanBeneficiaryModelCopyWithImpl<PlanBeneficiaryModel>(this as PlanBeneficiaryModel, _$identity);

  /// Serializes this PlanBeneficiaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanBeneficiaryModel&&(identical(other.pivotId, pivotId) || other.pivotId == pivotId)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.isTurn, isTurn) || other.isTurn == isTurn)&&(identical(other.turnUntil, turnUntil) || other.turnUntil == turnUntil)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.hasTaken, hasTaken) || other.hasTaken == hasTaken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pivotId,beneficiaryId,isTurn,turnUntil,receivedAt,hasTaken);

@override
String toString() {
  return 'PlanBeneficiaryModel(pivotId: $pivotId, beneficiaryId: $beneficiaryId, isTurn: $isTurn, turnUntil: $turnUntil, receivedAt: $receivedAt, hasTaken: $hasTaken)';
}


}

/// @nodoc
abstract mixin class $PlanBeneficiaryModelCopyWith<$Res>  {
  factory $PlanBeneficiaryModelCopyWith(PlanBeneficiaryModel value, $Res Function(PlanBeneficiaryModel) _then) = _$PlanBeneficiaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'pivot_id') int pivotId,@JsonKey(name: 'beneficiary_id') int beneficiaryId,@JsonKey(name: 'is_turn') int isTurn,@JsonKey(name: 'turn_until') String turnUntil,@JsonKey(name: 'received_at') String receivedAt,@JsonKey(name: 'has_taken') bool hasTaken
});




}
/// @nodoc
class _$PlanBeneficiaryModelCopyWithImpl<$Res>
    implements $PlanBeneficiaryModelCopyWith<$Res> {
  _$PlanBeneficiaryModelCopyWithImpl(this._self, this._then);

  final PlanBeneficiaryModel _self;
  final $Res Function(PlanBeneficiaryModel) _then;

/// Create a copy of PlanBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pivotId = null,Object? beneficiaryId = null,Object? isTurn = null,Object? turnUntil = null,Object? receivedAt = null,Object? hasTaken = null,}) {
  return _then(_self.copyWith(
pivotId: null == pivotId ? _self.pivotId : pivotId // ignore: cast_nullable_to_non_nullable
as int,beneficiaryId: null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as int,isTurn: null == isTurn ? _self.isTurn : isTurn // ignore: cast_nullable_to_non_nullable
as int,turnUntil: null == turnUntil ? _self.turnUntil : turnUntil // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String,hasTaken: null == hasTaken ? _self.hasTaken : hasTaken // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanBeneficiaryModel].
extension PlanBeneficiaryModelPatterns on PlanBeneficiaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanBeneficiaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanBeneficiaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanBeneficiaryModel value)  $default,){
final _that = this;
switch (_that) {
case _PlanBeneficiaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanBeneficiaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlanBeneficiaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'pivot_id')  int pivotId, @JsonKey(name: 'beneficiary_id')  int beneficiaryId, @JsonKey(name: 'is_turn')  int isTurn, @JsonKey(name: 'turn_until')  String turnUntil, @JsonKey(name: 'received_at')  String receivedAt, @JsonKey(name: 'has_taken')  bool hasTaken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanBeneficiaryModel() when $default != null:
return $default(_that.pivotId,_that.beneficiaryId,_that.isTurn,_that.turnUntil,_that.receivedAt,_that.hasTaken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'pivot_id')  int pivotId, @JsonKey(name: 'beneficiary_id')  int beneficiaryId, @JsonKey(name: 'is_turn')  int isTurn, @JsonKey(name: 'turn_until')  String turnUntil, @JsonKey(name: 'received_at')  String receivedAt, @JsonKey(name: 'has_taken')  bool hasTaken)  $default,) {final _that = this;
switch (_that) {
case _PlanBeneficiaryModel():
return $default(_that.pivotId,_that.beneficiaryId,_that.isTurn,_that.turnUntil,_that.receivedAt,_that.hasTaken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'pivot_id')  int pivotId, @JsonKey(name: 'beneficiary_id')  int beneficiaryId, @JsonKey(name: 'is_turn')  int isTurn, @JsonKey(name: 'turn_until')  String turnUntil, @JsonKey(name: 'received_at')  String receivedAt, @JsonKey(name: 'has_taken')  bool hasTaken)?  $default,) {final _that = this;
switch (_that) {
case _PlanBeneficiaryModel() when $default != null:
return $default(_that.pivotId,_that.beneficiaryId,_that.isTurn,_that.turnUntil,_that.receivedAt,_that.hasTaken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanBeneficiaryModel implements PlanBeneficiaryModel {
  const _PlanBeneficiaryModel({@JsonKey(name: 'pivot_id') required this.pivotId, @JsonKey(name: 'beneficiary_id') required this.beneficiaryId, @JsonKey(name: 'is_turn') required this.isTurn, @JsonKey(name: 'turn_until') required this.turnUntil, @JsonKey(name: 'received_at') required this.receivedAt, @JsonKey(name: 'has_taken') required this.hasTaken});
  factory _PlanBeneficiaryModel.fromJson(Map<String, dynamic> json) => _$PlanBeneficiaryModelFromJson(json);

@override@JsonKey(name: 'pivot_id') final  int pivotId;
@override@JsonKey(name: 'beneficiary_id') final  int beneficiaryId;
@override@JsonKey(name: 'is_turn') final  int isTurn;
@override@JsonKey(name: 'turn_until') final  String turnUntil;
@override@JsonKey(name: 'received_at') final  String receivedAt;
@override@JsonKey(name: 'has_taken') final  bool hasTaken;

/// Create a copy of PlanBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanBeneficiaryModelCopyWith<_PlanBeneficiaryModel> get copyWith => __$PlanBeneficiaryModelCopyWithImpl<_PlanBeneficiaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanBeneficiaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanBeneficiaryModel&&(identical(other.pivotId, pivotId) || other.pivotId == pivotId)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.isTurn, isTurn) || other.isTurn == isTurn)&&(identical(other.turnUntil, turnUntil) || other.turnUntil == turnUntil)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.hasTaken, hasTaken) || other.hasTaken == hasTaken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pivotId,beneficiaryId,isTurn,turnUntil,receivedAt,hasTaken);

@override
String toString() {
  return 'PlanBeneficiaryModel(pivotId: $pivotId, beneficiaryId: $beneficiaryId, isTurn: $isTurn, turnUntil: $turnUntil, receivedAt: $receivedAt, hasTaken: $hasTaken)';
}


}

/// @nodoc
abstract mixin class _$PlanBeneficiaryModelCopyWith<$Res> implements $PlanBeneficiaryModelCopyWith<$Res> {
  factory _$PlanBeneficiaryModelCopyWith(_PlanBeneficiaryModel value, $Res Function(_PlanBeneficiaryModel) _then) = __$PlanBeneficiaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'pivot_id') int pivotId,@JsonKey(name: 'beneficiary_id') int beneficiaryId,@JsonKey(name: 'is_turn') int isTurn,@JsonKey(name: 'turn_until') String turnUntil,@JsonKey(name: 'received_at') String receivedAt,@JsonKey(name: 'has_taken') bool hasTaken
});




}
/// @nodoc
class __$PlanBeneficiaryModelCopyWithImpl<$Res>
    implements _$PlanBeneficiaryModelCopyWith<$Res> {
  __$PlanBeneficiaryModelCopyWithImpl(this._self, this._then);

  final _PlanBeneficiaryModel _self;
  final $Res Function(_PlanBeneficiaryModel) _then;

/// Create a copy of PlanBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pivotId = null,Object? beneficiaryId = null,Object? isTurn = null,Object? turnUntil = null,Object? receivedAt = null,Object? hasTaken = null,}) {
  return _then(_PlanBeneficiaryModel(
pivotId: null == pivotId ? _self.pivotId : pivotId // ignore: cast_nullable_to_non_nullable
as int,beneficiaryId: null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as int,isTurn: null == isTurn ? _self.isTurn : isTurn // ignore: cast_nullable_to_non_nullable
as int,turnUntil: null == turnUntil ? _self.turnUntil : turnUntil // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String,hasTaken: null == hasTaken ? _self.hasTaken : hasTaken // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
