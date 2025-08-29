// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_requests_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryRequestsModel {

@JsonKey(name: 'instantAids') List<InstantAidModel> get instantAids;@JsonKey(name: 'needRequests') List<NeedRequestModel> get needRequests; List<PrescriptionModel> get prescriptions;
/// Create a copy of BeneficiaryRequestsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryRequestsModelCopyWith<BeneficiaryRequestsModel> get copyWith => _$BeneficiaryRequestsModelCopyWithImpl<BeneficiaryRequestsModel>(this as BeneficiaryRequestsModel, _$identity);

  /// Serializes this BeneficiaryRequestsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryRequestsModel&&const DeepCollectionEquality().equals(other.instantAids, instantAids)&&const DeepCollectionEquality().equals(other.needRequests, needRequests)&&const DeepCollectionEquality().equals(other.prescriptions, prescriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(instantAids),const DeepCollectionEquality().hash(needRequests),const DeepCollectionEquality().hash(prescriptions));

@override
String toString() {
  return 'BeneficiaryRequestsModel(instantAids: $instantAids, needRequests: $needRequests, prescriptions: $prescriptions)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryRequestsModelCopyWith<$Res>  {
  factory $BeneficiaryRequestsModelCopyWith(BeneficiaryRequestsModel value, $Res Function(BeneficiaryRequestsModel) _then) = _$BeneficiaryRequestsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'instantAids') List<InstantAidModel> instantAids,@JsonKey(name: 'needRequests') List<NeedRequestModel> needRequests, List<PrescriptionModel> prescriptions
});




}
/// @nodoc
class _$BeneficiaryRequestsModelCopyWithImpl<$Res>
    implements $BeneficiaryRequestsModelCopyWith<$Res> {
  _$BeneficiaryRequestsModelCopyWithImpl(this._self, this._then);

  final BeneficiaryRequestsModel _self;
  final $Res Function(BeneficiaryRequestsModel) _then;

/// Create a copy of BeneficiaryRequestsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? instantAids = null,Object? needRequests = null,Object? prescriptions = null,}) {
  return _then(_self.copyWith(
instantAids: null == instantAids ? _self.instantAids : instantAids // ignore: cast_nullable_to_non_nullable
as List<InstantAidModel>,needRequests: null == needRequests ? _self.needRequests : needRequests // ignore: cast_nullable_to_non_nullable
as List<NeedRequestModel>,prescriptions: null == prescriptions ? _self.prescriptions : prescriptions // ignore: cast_nullable_to_non_nullable
as List<PrescriptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryRequestsModel].
extension BeneficiaryRequestsModelPatterns on BeneficiaryRequestsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryRequestsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryRequestsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryRequestsModel value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryRequestsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryRequestsModel value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryRequestsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'instantAids')  List<InstantAidModel> instantAids, @JsonKey(name: 'needRequests')  List<NeedRequestModel> needRequests,  List<PrescriptionModel> prescriptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryRequestsModel() when $default != null:
return $default(_that.instantAids,_that.needRequests,_that.prescriptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'instantAids')  List<InstantAidModel> instantAids, @JsonKey(name: 'needRequests')  List<NeedRequestModel> needRequests,  List<PrescriptionModel> prescriptions)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryRequestsModel():
return $default(_that.instantAids,_that.needRequests,_that.prescriptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'instantAids')  List<InstantAidModel> instantAids, @JsonKey(name: 'needRequests')  List<NeedRequestModel> needRequests,  List<PrescriptionModel> prescriptions)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryRequestsModel() when $default != null:
return $default(_that.instantAids,_that.needRequests,_that.prescriptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryRequestsModel implements BeneficiaryRequestsModel {
  const _BeneficiaryRequestsModel({@JsonKey(name: 'instantAids') required final  List<InstantAidModel> instantAids, @JsonKey(name: 'needRequests') required final  List<NeedRequestModel> needRequests, required final  List<PrescriptionModel> prescriptions}): _instantAids = instantAids,_needRequests = needRequests,_prescriptions = prescriptions;
  factory _BeneficiaryRequestsModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryRequestsModelFromJson(json);

 final  List<InstantAidModel> _instantAids;
@override@JsonKey(name: 'instantAids') List<InstantAidModel> get instantAids {
  if (_instantAids is EqualUnmodifiableListView) return _instantAids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_instantAids);
}

 final  List<NeedRequestModel> _needRequests;
@override@JsonKey(name: 'needRequests') List<NeedRequestModel> get needRequests {
  if (_needRequests is EqualUnmodifiableListView) return _needRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_needRequests);
}

 final  List<PrescriptionModel> _prescriptions;
@override List<PrescriptionModel> get prescriptions {
  if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prescriptions);
}


/// Create a copy of BeneficiaryRequestsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryRequestsModelCopyWith<_BeneficiaryRequestsModel> get copyWith => __$BeneficiaryRequestsModelCopyWithImpl<_BeneficiaryRequestsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryRequestsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryRequestsModel&&const DeepCollectionEquality().equals(other._instantAids, _instantAids)&&const DeepCollectionEquality().equals(other._needRequests, _needRequests)&&const DeepCollectionEquality().equals(other._prescriptions, _prescriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_instantAids),const DeepCollectionEquality().hash(_needRequests),const DeepCollectionEquality().hash(_prescriptions));

@override
String toString() {
  return 'BeneficiaryRequestsModel(instantAids: $instantAids, needRequests: $needRequests, prescriptions: $prescriptions)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryRequestsModelCopyWith<$Res> implements $BeneficiaryRequestsModelCopyWith<$Res> {
  factory _$BeneficiaryRequestsModelCopyWith(_BeneficiaryRequestsModel value, $Res Function(_BeneficiaryRequestsModel) _then) = __$BeneficiaryRequestsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'instantAids') List<InstantAidModel> instantAids,@JsonKey(name: 'needRequests') List<NeedRequestModel> needRequests, List<PrescriptionModel> prescriptions
});




}
/// @nodoc
class __$BeneficiaryRequestsModelCopyWithImpl<$Res>
    implements _$BeneficiaryRequestsModelCopyWith<$Res> {
  __$BeneficiaryRequestsModelCopyWithImpl(this._self, this._then);

  final _BeneficiaryRequestsModel _self;
  final $Res Function(_BeneficiaryRequestsModel) _then;

/// Create a copy of BeneficiaryRequestsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? instantAids = null,Object? needRequests = null,Object? prescriptions = null,}) {
  return _then(_BeneficiaryRequestsModel(
instantAids: null == instantAids ? _self._instantAids : instantAids // ignore: cast_nullable_to_non_nullable
as List<InstantAidModel>,needRequests: null == needRequests ? _self._needRequests : needRequests // ignore: cast_nullable_to_non_nullable
as List<NeedRequestModel>,prescriptions: null == prescriptions ? _self._prescriptions : prescriptions // ignore: cast_nullable_to_non_nullable
as List<PrescriptionModel>,
  ));
}


}

// dart format on
