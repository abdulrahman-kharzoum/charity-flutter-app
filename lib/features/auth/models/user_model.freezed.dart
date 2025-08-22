// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 int get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'father_name') String get fatherName;@JsonKey(name: 'mother_name') String get motherName; String get gender;@JsonKey(name: 'birth_date') String get birthDate;@JsonKey(name: 'birth_place') String get birthPlace;@JsonKey(name: 'national_number') String get nationalNumber; String get job;@JsonKey(name: 'health_status') String get healthStatus;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'mobile_number') String get mobileNumber; String get address;@JsonKey(name: 'residence_type') String get residenceType;@JsonKey(name: 'monthly_income') int get monthlyIncome;@JsonKey(name: 'case_description') String get caseDescription;@JsonKey(name: 'group_id') int get groupId;@JsonKey(name: 'request_id') int get requestId;@JsonKey(name: 'request_status') String get requestStatus;@JsonKey(name: 'personal_image_id') int get personalImageId;@JsonKey(name: 'residence_document_id') int get residenceDocumentId;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'personal_image') PersonalImageModel get personalImage;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.nationalNumber, nationalNumber) || other.nationalNumber == nationalNumber)&&(identical(other.job, job) || other.job == job)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.residenceType, residenceType) || other.residenceType == residenceType)&&(identical(other.monthlyIncome, monthlyIncome) || other.monthlyIncome == monthlyIncome)&&(identical(other.caseDescription, caseDescription) || other.caseDescription == caseDescription)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.personalImageId, personalImageId) || other.personalImageId == personalImageId)&&(identical(other.residenceDocumentId, residenceDocumentId) || other.residenceDocumentId == residenceDocumentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.personalImage, personalImage) || other.personalImage == personalImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,fatherName,motherName,gender,birthDate,birthPlace,nationalNumber,job,healthStatus,phoneNumber,mobileNumber,address,residenceType,monthlyIncome,caseDescription,groupId,requestId,requestStatus,personalImageId,residenceDocumentId,createdAt,updatedAt,personalImage]);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, motherName: $motherName, gender: $gender, birthDate: $birthDate, birthPlace: $birthPlace, nationalNumber: $nationalNumber, job: $job, healthStatus: $healthStatus, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, address: $address, residenceType: $residenceType, monthlyIncome: $monthlyIncome, caseDescription: $caseDescription, groupId: $groupId, requestId: $requestId, requestStatus: $requestStatus, personalImageId: $personalImageId, residenceDocumentId: $residenceDocumentId, createdAt: $createdAt, updatedAt: $updatedAt, personalImage: $personalImage)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName, String gender,@JsonKey(name: 'birth_date') String birthDate,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'national_number') String nationalNumber, String job,@JsonKey(name: 'health_status') String healthStatus,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'mobile_number') String mobileNumber, String address,@JsonKey(name: 'residence_type') String residenceType,@JsonKey(name: 'monthly_income') int monthlyIncome,@JsonKey(name: 'case_description') String caseDescription,@JsonKey(name: 'group_id') int groupId,@JsonKey(name: 'request_id') int requestId,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'personal_image_id') int personalImageId,@JsonKey(name: 'residence_document_id') int residenceDocumentId,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'personal_image') PersonalImageModel personalImage
});


$PersonalImageModelCopyWith<$Res> get personalImage;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? fatherName = null,Object? motherName = null,Object? gender = null,Object? birthDate = null,Object? birthPlace = null,Object? nationalNumber = null,Object? job = null,Object? healthStatus = null,Object? phoneNumber = null,Object? mobileNumber = null,Object? address = null,Object? residenceType = null,Object? monthlyIncome = null,Object? caseDescription = null,Object? groupId = null,Object? requestId = null,Object? requestStatus = null,Object? personalImageId = null,Object? residenceDocumentId = null,Object? createdAt = null,Object? updatedAt = null,Object? personalImage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,nationalNumber: null == nationalNumber ? _self.nationalNumber : nationalNumber // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,residenceType: null == residenceType ? _self.residenceType : residenceType // ignore: cast_nullable_to_non_nullable
as String,monthlyIncome: null == monthlyIncome ? _self.monthlyIncome : monthlyIncome // ignore: cast_nullable_to_non_nullable
as int,caseDescription: null == caseDescription ? _self.caseDescription : caseDescription // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,personalImageId: null == personalImageId ? _self.personalImageId : personalImageId // ignore: cast_nullable_to_non_nullable
as int,residenceDocumentId: null == residenceDocumentId ? _self.residenceDocumentId : residenceDocumentId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,personalImage: null == personalImage ? _self.personalImage : personalImage // ignore: cast_nullable_to_non_nullable
as PersonalImageModel,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonalImageModelCopyWith<$Res> get personalImage {
  
  return $PersonalImageModelCopyWith<$Res>(_self.personalImage, (value) {
    return _then(_self.copyWith(personalImage: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName,  String gender, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'national_number')  String nationalNumber,  String job, @JsonKey(name: 'health_status')  String healthStatus, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'mobile_number')  String mobileNumber,  String address, @JsonKey(name: 'residence_type')  String residenceType, @JsonKey(name: 'monthly_income')  int monthlyIncome, @JsonKey(name: 'case_description')  String caseDescription, @JsonKey(name: 'group_id')  int groupId, @JsonKey(name: 'request_id')  int requestId, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'personal_image_id')  int personalImageId, @JsonKey(name: 'residence_document_id')  int residenceDocumentId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'personal_image')  PersonalImageModel personalImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.fatherName,_that.motherName,_that.gender,_that.birthDate,_that.birthPlace,_that.nationalNumber,_that.job,_that.healthStatus,_that.phoneNumber,_that.mobileNumber,_that.address,_that.residenceType,_that.monthlyIncome,_that.caseDescription,_that.groupId,_that.requestId,_that.requestStatus,_that.personalImageId,_that.residenceDocumentId,_that.createdAt,_that.updatedAt,_that.personalImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName,  String gender, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'national_number')  String nationalNumber,  String job, @JsonKey(name: 'health_status')  String healthStatus, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'mobile_number')  String mobileNumber,  String address, @JsonKey(name: 'residence_type')  String residenceType, @JsonKey(name: 'monthly_income')  int monthlyIncome, @JsonKey(name: 'case_description')  String caseDescription, @JsonKey(name: 'group_id')  int groupId, @JsonKey(name: 'request_id')  int requestId, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'personal_image_id')  int personalImageId, @JsonKey(name: 'residence_document_id')  int residenceDocumentId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'personal_image')  PersonalImageModel personalImage)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.fatherName,_that.motherName,_that.gender,_that.birthDate,_that.birthPlace,_that.nationalNumber,_that.job,_that.healthStatus,_that.phoneNumber,_that.mobileNumber,_that.address,_that.residenceType,_that.monthlyIncome,_that.caseDescription,_that.groupId,_that.requestId,_that.requestStatus,_that.personalImageId,_that.residenceDocumentId,_that.createdAt,_that.updatedAt,_that.personalImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName,  String gender, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'birth_place')  String birthPlace, @JsonKey(name: 'national_number')  String nationalNumber,  String job, @JsonKey(name: 'health_status')  String healthStatus, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'mobile_number')  String mobileNumber,  String address, @JsonKey(name: 'residence_type')  String residenceType, @JsonKey(name: 'monthly_income')  int monthlyIncome, @JsonKey(name: 'case_description')  String caseDescription, @JsonKey(name: 'group_id')  int groupId, @JsonKey(name: 'request_id')  int requestId, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'personal_image_id')  int personalImageId, @JsonKey(name: 'residence_document_id')  int residenceDocumentId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'personal_image')  PersonalImageModel personalImage)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.fatherName,_that.motherName,_that.gender,_that.birthDate,_that.birthPlace,_that.nationalNumber,_that.job,_that.healthStatus,_that.phoneNumber,_that.mobileNumber,_that.address,_that.residenceType,_that.monthlyIncome,_that.caseDescription,_that.groupId,_that.requestId,_that.requestStatus,_that.personalImageId,_that.residenceDocumentId,_that.createdAt,_that.updatedAt,_that.personalImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'father_name') required this.fatherName, @JsonKey(name: 'mother_name') required this.motherName, required this.gender, @JsonKey(name: 'birth_date') required this.birthDate, @JsonKey(name: 'birth_place') required this.birthPlace, @JsonKey(name: 'national_number') required this.nationalNumber, required this.job, @JsonKey(name: 'health_status') required this.healthStatus, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'mobile_number') required this.mobileNumber, required this.address, @JsonKey(name: 'residence_type') required this.residenceType, @JsonKey(name: 'monthly_income') required this.monthlyIncome, @JsonKey(name: 'case_description') required this.caseDescription, @JsonKey(name: 'group_id') required this.groupId, @JsonKey(name: 'request_id') required this.requestId, @JsonKey(name: 'request_status') required this.requestStatus, @JsonKey(name: 'personal_image_id') required this.personalImageId, @JsonKey(name: 'residence_document_id') required this.residenceDocumentId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'personal_image') required this.personalImage});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'father_name') final  String fatherName;
@override@JsonKey(name: 'mother_name') final  String motherName;
@override final  String gender;
@override@JsonKey(name: 'birth_date') final  String birthDate;
@override@JsonKey(name: 'birth_place') final  String birthPlace;
@override@JsonKey(name: 'national_number') final  String nationalNumber;
@override final  String job;
@override@JsonKey(name: 'health_status') final  String healthStatus;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'mobile_number') final  String mobileNumber;
@override final  String address;
@override@JsonKey(name: 'residence_type') final  String residenceType;
@override@JsonKey(name: 'monthly_income') final  int monthlyIncome;
@override@JsonKey(name: 'case_description') final  String caseDescription;
@override@JsonKey(name: 'group_id') final  int groupId;
@override@JsonKey(name: 'request_id') final  int requestId;
@override@JsonKey(name: 'request_status') final  String requestStatus;
@override@JsonKey(name: 'personal_image_id') final  int personalImageId;
@override@JsonKey(name: 'residence_document_id') final  int residenceDocumentId;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'personal_image') final  PersonalImageModel personalImage;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.nationalNumber, nationalNumber) || other.nationalNumber == nationalNumber)&&(identical(other.job, job) || other.job == job)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.residenceType, residenceType) || other.residenceType == residenceType)&&(identical(other.monthlyIncome, monthlyIncome) || other.monthlyIncome == monthlyIncome)&&(identical(other.caseDescription, caseDescription) || other.caseDescription == caseDescription)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.personalImageId, personalImageId) || other.personalImageId == personalImageId)&&(identical(other.residenceDocumentId, residenceDocumentId) || other.residenceDocumentId == residenceDocumentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.personalImage, personalImage) || other.personalImage == personalImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,fatherName,motherName,gender,birthDate,birthPlace,nationalNumber,job,healthStatus,phoneNumber,mobileNumber,address,residenceType,monthlyIncome,caseDescription,groupId,requestId,requestStatus,personalImageId,residenceDocumentId,createdAt,updatedAt,personalImage]);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, motherName: $motherName, gender: $gender, birthDate: $birthDate, birthPlace: $birthPlace, nationalNumber: $nationalNumber, job: $job, healthStatus: $healthStatus, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, address: $address, residenceType: $residenceType, monthlyIncome: $monthlyIncome, caseDescription: $caseDescription, groupId: $groupId, requestId: $requestId, requestStatus: $requestStatus, personalImageId: $personalImageId, residenceDocumentId: $residenceDocumentId, createdAt: $createdAt, updatedAt: $updatedAt, personalImage: $personalImage)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName, String gender,@JsonKey(name: 'birth_date') String birthDate,@JsonKey(name: 'birth_place') String birthPlace,@JsonKey(name: 'national_number') String nationalNumber, String job,@JsonKey(name: 'health_status') String healthStatus,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'mobile_number') String mobileNumber, String address,@JsonKey(name: 'residence_type') String residenceType,@JsonKey(name: 'monthly_income') int monthlyIncome,@JsonKey(name: 'case_description') String caseDescription,@JsonKey(name: 'group_id') int groupId,@JsonKey(name: 'request_id') int requestId,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'personal_image_id') int personalImageId,@JsonKey(name: 'residence_document_id') int residenceDocumentId,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'personal_image') PersonalImageModel personalImage
});


@override $PersonalImageModelCopyWith<$Res> get personalImage;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? fatherName = null,Object? motherName = null,Object? gender = null,Object? birthDate = null,Object? birthPlace = null,Object? nationalNumber = null,Object? job = null,Object? healthStatus = null,Object? phoneNumber = null,Object? mobileNumber = null,Object? address = null,Object? residenceType = null,Object? monthlyIncome = null,Object? caseDescription = null,Object? groupId = null,Object? requestId = null,Object? requestStatus = null,Object? personalImageId = null,Object? residenceDocumentId = null,Object? createdAt = null,Object? updatedAt = null,Object? personalImage = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,nationalNumber: null == nationalNumber ? _self.nationalNumber : nationalNumber // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,residenceType: null == residenceType ? _self.residenceType : residenceType // ignore: cast_nullable_to_non_nullable
as String,monthlyIncome: null == monthlyIncome ? _self.monthlyIncome : monthlyIncome // ignore: cast_nullable_to_non_nullable
as int,caseDescription: null == caseDescription ? _self.caseDescription : caseDescription // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,personalImageId: null == personalImageId ? _self.personalImageId : personalImageId // ignore: cast_nullable_to_non_nullable
as int,residenceDocumentId: null == residenceDocumentId ? _self.residenceDocumentId : residenceDocumentId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,personalImage: null == personalImage ? _self.personalImage : personalImage // ignore: cast_nullable_to_non_nullable
as PersonalImageModel,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonalImageModelCopyWith<$Res> get personalImage {
  
  return $PersonalImageModelCopyWith<$Res>(_self.personalImage, (value) {
    return _then(_self.copyWith(personalImage: value));
  });
}
}

// dart format on
