// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_aids_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryAidsModel {

 List<PlanModel> get plans; List<SalaryModel> get salaries;
/// Create a copy of BeneficiaryAidsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryAidsModelCopyWith<BeneficiaryAidsModel> get copyWith => _$BeneficiaryAidsModelCopyWithImpl<BeneficiaryAidsModel>(this as BeneficiaryAidsModel, _$identity);

  /// Serializes this BeneficiaryAidsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryAidsModel&&const DeepCollectionEquality().equals(other.plans, plans)&&const DeepCollectionEquality().equals(other.salaries, salaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(plans),const DeepCollectionEquality().hash(salaries));

@override
String toString() {
  return 'BeneficiaryAidsModel(plans: $plans, salaries: $salaries)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryAidsModelCopyWith<$Res>  {
  factory $BeneficiaryAidsModelCopyWith(BeneficiaryAidsModel value, $Res Function(BeneficiaryAidsModel) _then) = _$BeneficiaryAidsModelCopyWithImpl;
@useResult
$Res call({
 List<PlanModel> plans, List<SalaryModel> salaries
});




}
/// @nodoc
class _$BeneficiaryAidsModelCopyWithImpl<$Res>
    implements $BeneficiaryAidsModelCopyWith<$Res> {
  _$BeneficiaryAidsModelCopyWithImpl(this._self, this._then);

  final BeneficiaryAidsModel _self;
  final $Res Function(BeneficiaryAidsModel) _then;

/// Create a copy of BeneficiaryAidsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plans = null,Object? salaries = null,}) {
  return _then(_self.copyWith(
plans: null == plans ? _self.plans : plans // ignore: cast_nullable_to_non_nullable
as List<PlanModel>,salaries: null == salaries ? _self.salaries : salaries // ignore: cast_nullable_to_non_nullable
as List<SalaryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryAidsModel].
extension BeneficiaryAidsModelPatterns on BeneficiaryAidsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryAidsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryAidsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryAidsModel value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryAidsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryAidsModel value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryAidsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PlanModel> plans,  List<SalaryModel> salaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryAidsModel() when $default != null:
return $default(_that.plans,_that.salaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PlanModel> plans,  List<SalaryModel> salaries)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryAidsModel():
return $default(_that.plans,_that.salaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PlanModel> plans,  List<SalaryModel> salaries)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryAidsModel() when $default != null:
return $default(_that.plans,_that.salaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryAidsModel implements BeneficiaryAidsModel {
  const _BeneficiaryAidsModel({required final  List<PlanModel> plans, required final  List<SalaryModel> salaries}): _plans = plans,_salaries = salaries;
  factory _BeneficiaryAidsModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryAidsModelFromJson(json);

 final  List<PlanModel> _plans;
@override List<PlanModel> get plans {
  if (_plans is EqualUnmodifiableListView) return _plans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plans);
}

 final  List<SalaryModel> _salaries;
@override List<SalaryModel> get salaries {
  if (_salaries is EqualUnmodifiableListView) return _salaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salaries);
}


/// Create a copy of BeneficiaryAidsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryAidsModelCopyWith<_BeneficiaryAidsModel> get copyWith => __$BeneficiaryAidsModelCopyWithImpl<_BeneficiaryAidsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryAidsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryAidsModel&&const DeepCollectionEquality().equals(other._plans, _plans)&&const DeepCollectionEquality().equals(other._salaries, _salaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_plans),const DeepCollectionEquality().hash(_salaries));

@override
String toString() {
  return 'BeneficiaryAidsModel(plans: $plans, salaries: $salaries)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryAidsModelCopyWith<$Res> implements $BeneficiaryAidsModelCopyWith<$Res> {
  factory _$BeneficiaryAidsModelCopyWith(_BeneficiaryAidsModel value, $Res Function(_BeneficiaryAidsModel) _then) = __$BeneficiaryAidsModelCopyWithImpl;
@override @useResult
$Res call({
 List<PlanModel> plans, List<SalaryModel> salaries
});




}
/// @nodoc
class __$BeneficiaryAidsModelCopyWithImpl<$Res>
    implements _$BeneficiaryAidsModelCopyWith<$Res> {
  __$BeneficiaryAidsModelCopyWithImpl(this._self, this._then);

  final _BeneficiaryAidsModel _self;
  final $Res Function(_BeneficiaryAidsModel) _then;

/// Create a copy of BeneficiaryAidsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plans = null,Object? salaries = null,}) {
  return _then(_BeneficiaryAidsModel(
plans: null == plans ? _self._plans : plans // ignore: cast_nullable_to_non_nullable
as List<PlanModel>,salaries: null == salaries ? _self._salaries : salaries // ignore: cast_nullable_to_non_nullable
as List<SalaryModel>,
  ));
}


}

// dart format on
