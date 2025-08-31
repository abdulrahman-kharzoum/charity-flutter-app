// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClinicBeneficiaryModel {

 int get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'father_name') String get fatherName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'birth_date') String get birthDate;@JsonKey(name: 'national_number') String get nationalNumber;@JsonKey(name: 'phone_number') String get phoneNumber; String get address;@JsonKey(name: 'medical_history') String? get medicalHistory; List<AppointmentModel> get appointments;
/// Create a copy of ClinicBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClinicBeneficiaryModelCopyWith<ClinicBeneficiaryModel> get copyWith => _$ClinicBeneficiaryModelCopyWithImpl<ClinicBeneficiaryModel>(this as ClinicBeneficiaryModel, _$identity);

  /// Serializes this ClinicBeneficiaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClinicBeneficiaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.nationalNumber, nationalNumber) || other.nationalNumber == nationalNumber)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&const DeepCollectionEquality().equals(other.appointments, appointments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,fatherName,lastName,birthDate,nationalNumber,phoneNumber,address,medicalHistory,const DeepCollectionEquality().hash(appointments));

@override
String toString() {
  return 'ClinicBeneficiaryModel(id: $id, firstName: $firstName, fatherName: $fatherName, lastName: $lastName, birthDate: $birthDate, nationalNumber: $nationalNumber, phoneNumber: $phoneNumber, address: $address, medicalHistory: $medicalHistory, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class $ClinicBeneficiaryModelCopyWith<$Res>  {
  factory $ClinicBeneficiaryModelCopyWith(ClinicBeneficiaryModel value, $Res Function(ClinicBeneficiaryModel) _then) = _$ClinicBeneficiaryModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'birth_date') String birthDate,@JsonKey(name: 'national_number') String nationalNumber,@JsonKey(name: 'phone_number') String phoneNumber, String address,@JsonKey(name: 'medical_history') String? medicalHistory, List<AppointmentModel> appointments
});




}
/// @nodoc
class _$ClinicBeneficiaryModelCopyWithImpl<$Res>
    implements $ClinicBeneficiaryModelCopyWith<$Res> {
  _$ClinicBeneficiaryModelCopyWithImpl(this._self, this._then);

  final ClinicBeneficiaryModel _self;
  final $Res Function(ClinicBeneficiaryModel) _then;

/// Create a copy of ClinicBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? fatherName = null,Object? lastName = null,Object? birthDate = null,Object? nationalNumber = null,Object? phoneNumber = null,Object? address = null,Object? medicalHistory = freezed,Object? appointments = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,nationalNumber: null == nationalNumber ? _self.nationalNumber : nationalNumber // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClinicBeneficiaryModel].
extension ClinicBeneficiaryModelPatterns on ClinicBeneficiaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClinicBeneficiaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClinicBeneficiaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClinicBeneficiaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ClinicBeneficiaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClinicBeneficiaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClinicBeneficiaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'national_number')  String nationalNumber, @JsonKey(name: 'phone_number')  String phoneNumber,  String address, @JsonKey(name: 'medical_history')  String? medicalHistory,  List<AppointmentModel> appointments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClinicBeneficiaryModel() when $default != null:
return $default(_that.id,_that.firstName,_that.fatherName,_that.lastName,_that.birthDate,_that.nationalNumber,_that.phoneNumber,_that.address,_that.medicalHistory,_that.appointments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'national_number')  String nationalNumber, @JsonKey(name: 'phone_number')  String phoneNumber,  String address, @JsonKey(name: 'medical_history')  String? medicalHistory,  List<AppointmentModel> appointments)  $default,) {final _that = this;
switch (_that) {
case _ClinicBeneficiaryModel():
return $default(_that.id,_that.firstName,_that.fatherName,_that.lastName,_that.birthDate,_that.nationalNumber,_that.phoneNumber,_that.address,_that.medicalHistory,_that.appointments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'national_number')  String nationalNumber, @JsonKey(name: 'phone_number')  String phoneNumber,  String address, @JsonKey(name: 'medical_history')  String? medicalHistory,  List<AppointmentModel> appointments)?  $default,) {final _that = this;
switch (_that) {
case _ClinicBeneficiaryModel() when $default != null:
return $default(_that.id,_that.firstName,_that.fatherName,_that.lastName,_that.birthDate,_that.nationalNumber,_that.phoneNumber,_that.address,_that.medicalHistory,_that.appointments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClinicBeneficiaryModel implements ClinicBeneficiaryModel {
  const _ClinicBeneficiaryModel({required this.id, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'father_name') required this.fatherName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'birth_date') required this.birthDate, @JsonKey(name: 'national_number') required this.nationalNumber, @JsonKey(name: 'phone_number') required this.phoneNumber, required this.address, @JsonKey(name: 'medical_history') required this.medicalHistory, required final  List<AppointmentModel> appointments}): _appointments = appointments;
  factory _ClinicBeneficiaryModel.fromJson(Map<String, dynamic> json) => _$ClinicBeneficiaryModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'father_name') final  String fatherName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'birth_date') final  String birthDate;
@override@JsonKey(name: 'national_number') final  String nationalNumber;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override final  String address;
@override@JsonKey(name: 'medical_history') final  String? medicalHistory;
 final  List<AppointmentModel> _appointments;
@override List<AppointmentModel> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}


/// Create a copy of ClinicBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClinicBeneficiaryModelCopyWith<_ClinicBeneficiaryModel> get copyWith => __$ClinicBeneficiaryModelCopyWithImpl<_ClinicBeneficiaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClinicBeneficiaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClinicBeneficiaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.nationalNumber, nationalNumber) || other.nationalNumber == nationalNumber)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&const DeepCollectionEquality().equals(other._appointments, _appointments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,fatherName,lastName,birthDate,nationalNumber,phoneNumber,address,medicalHistory,const DeepCollectionEquality().hash(_appointments));

@override
String toString() {
  return 'ClinicBeneficiaryModel(id: $id, firstName: $firstName, fatherName: $fatherName, lastName: $lastName, birthDate: $birthDate, nationalNumber: $nationalNumber, phoneNumber: $phoneNumber, address: $address, medicalHistory: $medicalHistory, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class _$ClinicBeneficiaryModelCopyWith<$Res> implements $ClinicBeneficiaryModelCopyWith<$Res> {
  factory _$ClinicBeneficiaryModelCopyWith(_ClinicBeneficiaryModel value, $Res Function(_ClinicBeneficiaryModel) _then) = __$ClinicBeneficiaryModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'birth_date') String birthDate,@JsonKey(name: 'national_number') String nationalNumber,@JsonKey(name: 'phone_number') String phoneNumber, String address,@JsonKey(name: 'medical_history') String? medicalHistory, List<AppointmentModel> appointments
});




}
/// @nodoc
class __$ClinicBeneficiaryModelCopyWithImpl<$Res>
    implements _$ClinicBeneficiaryModelCopyWith<$Res> {
  __$ClinicBeneficiaryModelCopyWithImpl(this._self, this._then);

  final _ClinicBeneficiaryModel _self;
  final $Res Function(_ClinicBeneficiaryModel) _then;

/// Create a copy of ClinicBeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? fatherName = null,Object? lastName = null,Object? birthDate = null,Object? nationalNumber = null,Object? phoneNumber = null,Object? address = null,Object? medicalHistory = freezed,Object? appointments = null,}) {
  return _then(_ClinicBeneficiaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,nationalNumber: null == nationalNumber ? _self.nationalNumber : nationalNumber // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}


}

// dart format on
