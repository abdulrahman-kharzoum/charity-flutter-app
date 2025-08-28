// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalaryModel {

 int get id; int get amount;@JsonKey(name: 'issued_at') String get issuedAt;@JsonKey(name: 'received_at') String get receivedAt;@JsonKey(name: 'beneficiary_id') int get beneficiaryId;@JsonKey(name: 'has_taken') bool get hasTaken;
/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryModelCopyWith<SalaryModel> get copyWith => _$SalaryModelCopyWithImpl<SalaryModel>(this as SalaryModel, _$identity);

  /// Serializes this SalaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.hasTaken, hasTaken) || other.hasTaken == hasTaken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,issuedAt,receivedAt,beneficiaryId,hasTaken);

@override
String toString() {
  return 'SalaryModel(id: $id, amount: $amount, issuedAt: $issuedAt, receivedAt: $receivedAt, beneficiaryId: $beneficiaryId, hasTaken: $hasTaken)';
}


}

/// @nodoc
abstract mixin class $SalaryModelCopyWith<$Res>  {
  factory $SalaryModelCopyWith(SalaryModel value, $Res Function(SalaryModel) _then) = _$SalaryModelCopyWithImpl;
@useResult
$Res call({
 int id, int amount,@JsonKey(name: 'issued_at') String issuedAt,@JsonKey(name: 'received_at') String receivedAt,@JsonKey(name: 'beneficiary_id') int beneficiaryId,@JsonKey(name: 'has_taken') bool hasTaken
});




}
/// @nodoc
class _$SalaryModelCopyWithImpl<$Res>
    implements $SalaryModelCopyWith<$Res> {
  _$SalaryModelCopyWithImpl(this._self, this._then);

  final SalaryModel _self;
  final $Res Function(SalaryModel) _then;

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? issuedAt = null,Object? receivedAt = null,Object? beneficiaryId = null,Object? hasTaken = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,issuedAt: null == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String,beneficiaryId: null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as int,hasTaken: null == hasTaken ? _self.hasTaken : hasTaken // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SalaryModel].
extension SalaryModelPatterns on SalaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalaryModel value)  $default,){
final _that = this;
switch (_that) {
case _SalaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount, @JsonKey(name: 'issued_at')  String issuedAt, @JsonKey(name: 'received_at')  String receivedAt, @JsonKey(name: 'beneficiary_id')  int beneficiaryId, @JsonKey(name: 'has_taken')  bool hasTaken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
return $default(_that.id,_that.amount,_that.issuedAt,_that.receivedAt,_that.beneficiaryId,_that.hasTaken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount, @JsonKey(name: 'issued_at')  String issuedAt, @JsonKey(name: 'received_at')  String receivedAt, @JsonKey(name: 'beneficiary_id')  int beneficiaryId, @JsonKey(name: 'has_taken')  bool hasTaken)  $default,) {final _that = this;
switch (_that) {
case _SalaryModel():
return $default(_that.id,_that.amount,_that.issuedAt,_that.receivedAt,_that.beneficiaryId,_that.hasTaken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount, @JsonKey(name: 'issued_at')  String issuedAt, @JsonKey(name: 'received_at')  String receivedAt, @JsonKey(name: 'beneficiary_id')  int beneficiaryId, @JsonKey(name: 'has_taken')  bool hasTaken)?  $default,) {final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
return $default(_that.id,_that.amount,_that.issuedAt,_that.receivedAt,_that.beneficiaryId,_that.hasTaken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalaryModel implements SalaryModel {
  const _SalaryModel({required this.id, required this.amount, @JsonKey(name: 'issued_at') required this.issuedAt, @JsonKey(name: 'received_at') required this.receivedAt, @JsonKey(name: 'beneficiary_id') required this.beneficiaryId, @JsonKey(name: 'has_taken') required this.hasTaken});
  factory _SalaryModel.fromJson(Map<String, dynamic> json) => _$SalaryModelFromJson(json);

@override final  int id;
@override final  int amount;
@override@JsonKey(name: 'issued_at') final  String issuedAt;
@override@JsonKey(name: 'received_at') final  String receivedAt;
@override@JsonKey(name: 'beneficiary_id') final  int beneficiaryId;
@override@JsonKey(name: 'has_taken') final  bool hasTaken;

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryModelCopyWith<_SalaryModel> get copyWith => __$SalaryModelCopyWithImpl<_SalaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.hasTaken, hasTaken) || other.hasTaken == hasTaken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,issuedAt,receivedAt,beneficiaryId,hasTaken);

@override
String toString() {
  return 'SalaryModel(id: $id, amount: $amount, issuedAt: $issuedAt, receivedAt: $receivedAt, beneficiaryId: $beneficiaryId, hasTaken: $hasTaken)';
}


}

/// @nodoc
abstract mixin class _$SalaryModelCopyWith<$Res> implements $SalaryModelCopyWith<$Res> {
  factory _$SalaryModelCopyWith(_SalaryModel value, $Res Function(_SalaryModel) _then) = __$SalaryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount,@JsonKey(name: 'issued_at') String issuedAt,@JsonKey(name: 'received_at') String receivedAt,@JsonKey(name: 'beneficiary_id') int beneficiaryId,@JsonKey(name: 'has_taken') bool hasTaken
});




}
/// @nodoc
class __$SalaryModelCopyWithImpl<$Res>
    implements _$SalaryModelCopyWith<$Res> {
  __$SalaryModelCopyWithImpl(this._self, this._then);

  final _SalaryModel _self;
  final $Res Function(_SalaryModel) _then;

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? issuedAt = null,Object? receivedAt = null,Object? beneficiaryId = null,Object? hasTaken = null,}) {
  return _then(_SalaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,issuedAt: null == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String,beneficiaryId: null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as int,hasTaken: null == hasTaken ? _self.hasTaken : hasTaken // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
