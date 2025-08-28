// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryProfileModel {

 int get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'father_name') String get fatherName;@JsonKey(name: 'mother_name') String get motherName;@JsonKey(name: 'birth_date') String get birthDate;@JsonKey(name: 'birth_place') String get birthPlace; String get gender;@JsonKey(name: 'national_number') String get nationalNumber; String get job;@JsonKey(name: 'health_status') String get healthStatus;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'mobile_number') String get mobileNumber; String get address;@JsonKey(name: 'residence_type') String get residenceType;@JsonKey(name: 'residence_document_id') int get residenceDocumentId;@JsonKey(name: 'monthly_income') int get monthlyIncome;@JsonKey(name: 'case_description') String get caseDescription;@JsonKey(name: 'group_id') int get groupId;@JsonKey(name: 'request_id') int get requestId;@JsonKey(name: 'request_status') String get requestStatus;@JsonKey(name: 'family_members_number') int get familyMembersNumber;@JsonKey(name: 'medical_history') String? get medicalHistory; FileModel get personalImage; FileModel get residenceDocument; List<PartnerModel> get partners; List<UncleModel> get uncles; List<ProfileChildModel> get children; GroupModel get group; RequestModel get request; List<SalaryModel> get salaries; List<AppointmentModel> get appointments;
/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryProfileModelCopyWith<BeneficiaryProfileModel> get copyWith => _$BeneficiaryProfileModelCopyWithImpl<BeneficiaryProfileModel>(this as BeneficiaryProfileModel, _$identity);

  /// Serializes this BeneficiaryProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.nationalNumber, nationalNumber) || other.nationalNumber == nationalNumber)&&(identical(other.job, job) || other.job == job)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.residenceType, residenceType) || other.residenceType == residenceType)&&(identical(other.residenceDocumentId, residenceDocumentId) || other.residenceDocumentId == residenceDocumentId)&&(identical(other.monthlyIncome, monthlyIncome) || other.monthlyIncome == monthlyIncome)&&(identical(other.caseDescription, caseDescription) || other.caseDescription == caseDescription)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.familyMembersNumber, familyMembersNumber) || other.familyMembersNumber == familyMembersNumber)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&(identical(other.personalImage, personalImage) || other.personalImage == personalImage)&&(identical(other.residenceDocument, residenceDocument) || other.residenceDocument == residenceDocument)&&const DeepCollectionEquality().equals(other.partners, partners)&&const DeepCollectionEquality().equals(other.uncles, uncles)&&const DeepCollectionEquality().equals(other.children, children)&&(identical(other.group, group) || other.group == group)&&(identical(other.request, request) || other.request == request)&&const DeepCollectionEquality().equals(other.salaries, salaries)&&const DeepCollectionEquality().equals(other.appointments, appointments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,fatherName,motherName,birthDate,birthPlace,gender,nationalNumber,job,healthStatus,phoneNumber,mobileNumber,address,residenceType,residenceDocumentId,monthlyIncome,caseDescription,groupId,requestId,requestStatus,familyMembersNumber,medicalHistory,personalImage,residenceDocument,const DeepCollectionEquality().hash(partners),const DeepCollectionEquality().hash(uncles),const DeepCollectionEquality().hash(children),group,request,const DeepCollectionEquality().hash(salaries),const DeepCollectionEquality().hash(appointments)]);

@override
String toString() {
  return 'BeneficiaryProfileModel(id: $id, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, motherName: $motherName, birthDate: $birthDate, birthPlace: $birthPlace, gender: $gender, nationalNumber: $nationalNumber, job: $job, healthStatus: $healthStatus, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, address: $address, residenceType: $residenceType, residenceDocumentId: $residenceDocumentId, monthlyIncome: $monthlyIncome, caseDescription: $caseDescription, groupId: $groupId, requestId: $requestId, requestStatus: $requestStatus, familyMembersNumber: $familyMembersNumber, medicalHistory: $medicalHistory, personalImage: $personalImage, residenceDocument: $residenceDocument, partners: $partners, uncles: $uncles, children: $children, group: $group, request: $request, salaries: $salaries, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryProfileModelCopyWith<$Res>  {
  factory $BeneficiaryProfileModelCopyWith(BeneficiaryProfileModel value, $Res Function(BeneficiaryProfileModel) _then) = _$BeneficiaryProfileModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName,@JsonKey(name: 'birth_date') String birthDate,@JsonKey(name: 'birth_place') String birthPlace, String gender,@JsonKey(name: 'national_number') String nationalNumber, String job,@JsonKey(name: 'health_status') String healthStatus,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'mobile_number') String mobileNumber, String address,@JsonKey(name: 'residence_type') String residenceType,@JsonKey(name: 'residence_document_id') int residenceDocumentId,@JsonKey(name: 'monthly_income') int monthlyIncome,@JsonKey(name: 'case_description') String caseDescription,@JsonKey(name: 'group_id') int groupId,@JsonKey(name: 'request_id') int requestId,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'family_members_number') int familyMembersNumber,@JsonKey(name: 'medical_history') String? medicalHistory, FileModel personalImage, FileModel residenceDocument, List<PartnerModel> partners, List<UncleModel> uncles, List<ProfileChildModel> children, GroupModel group, RequestModel request, List<SalaryModel> salaries, List<AppointmentModel> appointments
});


$FileModelCopyWith<$Res> get personalImage;$FileModelCopyWith<$Res> get residenceDocument;$GroupModelCopyWith<$Res> get group;$RequestModelCopyWith<$Res> get request;

}
/// @nodoc
class _$BeneficiaryProfileModelCopyWithImpl<$Res>
    implements $BeneficiaryProfileModelCopyWith<$Res> {
  _$BeneficiaryProfileModelCopyWithImpl(this._self, this._then);

  final BeneficiaryProfileModel _self;
  final $Res Function(BeneficiaryProfileModel) _then;

/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? fatherName = null,Object? motherName = null,Object? birthDate = null,Object? birthPlace = null,Object? gender = null,Object? nationalNumber = null,Object? job = null,Object? healthStatus = null,Object? phoneNumber = null,Object? mobileNumber = null,Object? address = null,Object? residenceType = null,Object? residenceDocumentId = null,Object? monthlyIncome = null,Object? caseDescription = null,Object? groupId = null,Object? requestId = null,Object? requestStatus = null,Object? familyMembersNumber = null,Object? medicalHistory = freezed,Object? personalImage = null,Object? residenceDocument = null,Object? partners = null,Object? uncles = null,Object? children = null,Object? group = null,Object? request = null,Object? salaries = null,Object? appointments = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,nationalNumber: null == nationalNumber ? _self.nationalNumber : nationalNumber // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,residenceType: null == residenceType ? _self.residenceType : residenceType // ignore: cast_nullable_to_non_nullable
as String,residenceDocumentId: null == residenceDocumentId ? _self.residenceDocumentId : residenceDocumentId // ignore: cast_nullable_to_non_nullable
as int,monthlyIncome: null == monthlyIncome ? _self.monthlyIncome : monthlyIncome // ignore: cast_nullable_to_non_nullable
as int,caseDescription: null == caseDescription ? _self.caseDescription : caseDescription // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,familyMembersNumber: null == familyMembersNumber ? _self.familyMembersNumber : familyMembersNumber // ignore: cast_nullable_to_non_nullable
as int,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,personalImage: null == personalImage ? _self.personalImage : personalImage // ignore: cast_nullable_to_non_nullable
as FileModel,residenceDocument: null == residenceDocument ? _self.residenceDocument : residenceDocument // ignore: cast_nullable_to_non_nullable
as FileModel,partners: null == partners ? _self.partners : partners // ignore: cast_nullable_to_non_nullable
as List<PartnerModel>,uncles: null == uncles ? _self.uncles : uncles // ignore: cast_nullable_to_non_nullable
as List<UncleModel>,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<ProfileChildModel>,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupModel,request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as RequestModel,salaries: null == salaries ? _self.salaries : salaries // ignore: cast_nullable_to_non_nullable
as List<SalaryModel>,appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}
/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileModelCopyWith<$Res> get personalImage {
  
  return $FileModelCopyWith<$Res>(_self.personalImage, (value) {
    return _then(_self.copyWith(personalImage: value));
  });
}/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileModelCopyWith<$Res> get residenceDocument {
  
  return $FileModelCopyWith<$Res>(_self.residenceDocument, (value) {
    return _then(_self.copyWith(residenceDocument: value));
  });
}/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupModelCopyWith<$Res> get group {
  
  return $GroupModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestModelCopyWith<$Res> get request {
  
  return $RequestModelCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}


/// Adds pattern-matching-related methods to [BeneficiaryProfileModel].
extension BeneficiaryProfileModelPatterns on BeneficiaryProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'birth_place')  String birthPlace,  String gender, @JsonKey(name: 'national_number')  String nationalNumber,  String job, @JsonKey(name: 'health_status')  String healthStatus, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'mobile_number')  String mobileNumber,  String address, @JsonKey(name: 'residence_type')  String residenceType, @JsonKey(name: 'residence_document_id')  int residenceDocumentId, @JsonKey(name: 'monthly_income')  int monthlyIncome, @JsonKey(name: 'case_description')  String caseDescription, @JsonKey(name: 'group_id')  int groupId, @JsonKey(name: 'request_id')  int requestId, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'family_members_number')  int familyMembersNumber, @JsonKey(name: 'medical_history')  String? medicalHistory,  FileModel personalImage,  FileModel residenceDocument,  List<PartnerModel> partners,  List<UncleModel> uncles,  List<ProfileChildModel> children,  GroupModel group,  RequestModel request,  List<SalaryModel> salaries,  List<AppointmentModel> appointments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryProfileModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.fatherName,_that.motherName,_that.birthDate,_that.birthPlace,_that.gender,_that.nationalNumber,_that.job,_that.healthStatus,_that.phoneNumber,_that.mobileNumber,_that.address,_that.residenceType,_that.residenceDocumentId,_that.monthlyIncome,_that.caseDescription,_that.groupId,_that.requestId,_that.requestStatus,_that.familyMembersNumber,_that.medicalHistory,_that.personalImage,_that.residenceDocument,_that.partners,_that.uncles,_that.children,_that.group,_that.request,_that.salaries,_that.appointments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'birth_place')  String birthPlace,  String gender, @JsonKey(name: 'national_number')  String nationalNumber,  String job, @JsonKey(name: 'health_status')  String healthStatus, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'mobile_number')  String mobileNumber,  String address, @JsonKey(name: 'residence_type')  String residenceType, @JsonKey(name: 'residence_document_id')  int residenceDocumentId, @JsonKey(name: 'monthly_income')  int monthlyIncome, @JsonKey(name: 'case_description')  String caseDescription, @JsonKey(name: 'group_id')  int groupId, @JsonKey(name: 'request_id')  int requestId, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'family_members_number')  int familyMembersNumber, @JsonKey(name: 'medical_history')  String? medicalHistory,  FileModel personalImage,  FileModel residenceDocument,  List<PartnerModel> partners,  List<UncleModel> uncles,  List<ProfileChildModel> children,  GroupModel group,  RequestModel request,  List<SalaryModel> salaries,  List<AppointmentModel> appointments)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryProfileModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.fatherName,_that.motherName,_that.birthDate,_that.birthPlace,_that.gender,_that.nationalNumber,_that.job,_that.healthStatus,_that.phoneNumber,_that.mobileNumber,_that.address,_that.residenceType,_that.residenceDocumentId,_that.monthlyIncome,_that.caseDescription,_that.groupId,_that.requestId,_that.requestStatus,_that.familyMembersNumber,_that.medicalHistory,_that.personalImage,_that.residenceDocument,_that.partners,_that.uncles,_that.children,_that.group,_that.request,_that.salaries,_that.appointments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'father_name')  String fatherName, @JsonKey(name: 'mother_name')  String motherName, @JsonKey(name: 'birth_date')  String birthDate, @JsonKey(name: 'birth_place')  String birthPlace,  String gender, @JsonKey(name: 'national_number')  String nationalNumber,  String job, @JsonKey(name: 'health_status')  String healthStatus, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'mobile_number')  String mobileNumber,  String address, @JsonKey(name: 'residence_type')  String residenceType, @JsonKey(name: 'residence_document_id')  int residenceDocumentId, @JsonKey(name: 'monthly_income')  int monthlyIncome, @JsonKey(name: 'case_description')  String caseDescription, @JsonKey(name: 'group_id')  int groupId, @JsonKey(name: 'request_id')  int requestId, @JsonKey(name: 'request_status')  String requestStatus, @JsonKey(name: 'family_members_number')  int familyMembersNumber, @JsonKey(name: 'medical_history')  String? medicalHistory,  FileModel personalImage,  FileModel residenceDocument,  List<PartnerModel> partners,  List<UncleModel> uncles,  List<ProfileChildModel> children,  GroupModel group,  RequestModel request,  List<SalaryModel> salaries,  List<AppointmentModel> appointments)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryProfileModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.fatherName,_that.motherName,_that.birthDate,_that.birthPlace,_that.gender,_that.nationalNumber,_that.job,_that.healthStatus,_that.phoneNumber,_that.mobileNumber,_that.address,_that.residenceType,_that.residenceDocumentId,_that.monthlyIncome,_that.caseDescription,_that.groupId,_that.requestId,_that.requestStatus,_that.familyMembersNumber,_that.medicalHistory,_that.personalImage,_that.residenceDocument,_that.partners,_that.uncles,_that.children,_that.group,_that.request,_that.salaries,_that.appointments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryProfileModel implements BeneficiaryProfileModel {
  const _BeneficiaryProfileModel({required this.id, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'father_name') required this.fatherName, @JsonKey(name: 'mother_name') required this.motherName, @JsonKey(name: 'birth_date') required this.birthDate, @JsonKey(name: 'birth_place') required this.birthPlace, required this.gender, @JsonKey(name: 'national_number') required this.nationalNumber, required this.job, @JsonKey(name: 'health_status') required this.healthStatus, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'mobile_number') required this.mobileNumber, required this.address, @JsonKey(name: 'residence_type') required this.residenceType, @JsonKey(name: 'residence_document_id') required this.residenceDocumentId, @JsonKey(name: 'monthly_income') required this.monthlyIncome, @JsonKey(name: 'case_description') required this.caseDescription, @JsonKey(name: 'group_id') required this.groupId, @JsonKey(name: 'request_id') required this.requestId, @JsonKey(name: 'request_status') required this.requestStatus, @JsonKey(name: 'family_members_number') required this.familyMembersNumber, @JsonKey(name: 'medical_history') required this.medicalHistory, required this.personalImage, required this.residenceDocument, required final  List<PartnerModel> partners, required final  List<UncleModel> uncles, required final  List<ProfileChildModel> children, required this.group, required this.request, required final  List<SalaryModel> salaries, required final  List<AppointmentModel> appointments}): _partners = partners,_uncles = uncles,_children = children,_salaries = salaries,_appointments = appointments;
  factory _BeneficiaryProfileModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryProfileModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'father_name') final  String fatherName;
@override@JsonKey(name: 'mother_name') final  String motherName;
@override@JsonKey(name: 'birth_date') final  String birthDate;
@override@JsonKey(name: 'birth_place') final  String birthPlace;
@override final  String gender;
@override@JsonKey(name: 'national_number') final  String nationalNumber;
@override final  String job;
@override@JsonKey(name: 'health_status') final  String healthStatus;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'mobile_number') final  String mobileNumber;
@override final  String address;
@override@JsonKey(name: 'residence_type') final  String residenceType;
@override@JsonKey(name: 'residence_document_id') final  int residenceDocumentId;
@override@JsonKey(name: 'monthly_income') final  int monthlyIncome;
@override@JsonKey(name: 'case_description') final  String caseDescription;
@override@JsonKey(name: 'group_id') final  int groupId;
@override@JsonKey(name: 'request_id') final  int requestId;
@override@JsonKey(name: 'request_status') final  String requestStatus;
@override@JsonKey(name: 'family_members_number') final  int familyMembersNumber;
@override@JsonKey(name: 'medical_history') final  String? medicalHistory;
@override final  FileModel personalImage;
@override final  FileModel residenceDocument;
 final  List<PartnerModel> _partners;
@override List<PartnerModel> get partners {
  if (_partners is EqualUnmodifiableListView) return _partners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_partners);
}

 final  List<UncleModel> _uncles;
@override List<UncleModel> get uncles {
  if (_uncles is EqualUnmodifiableListView) return _uncles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uncles);
}

 final  List<ProfileChildModel> _children;
@override List<ProfileChildModel> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}

@override final  GroupModel group;
@override final  RequestModel request;
 final  List<SalaryModel> _salaries;
@override List<SalaryModel> get salaries {
  if (_salaries is EqualUnmodifiableListView) return _salaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salaries);
}

 final  List<AppointmentModel> _appointments;
@override List<AppointmentModel> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}


/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryProfileModelCopyWith<_BeneficiaryProfileModel> get copyWith => __$BeneficiaryProfileModelCopyWithImpl<_BeneficiaryProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fatherName, fatherName) || other.fatherName == fatherName)&&(identical(other.motherName, motherName) || other.motherName == motherName)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.nationalNumber, nationalNumber) || other.nationalNumber == nationalNumber)&&(identical(other.job, job) || other.job == job)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.residenceType, residenceType) || other.residenceType == residenceType)&&(identical(other.residenceDocumentId, residenceDocumentId) || other.residenceDocumentId == residenceDocumentId)&&(identical(other.monthlyIncome, monthlyIncome) || other.monthlyIncome == monthlyIncome)&&(identical(other.caseDescription, caseDescription) || other.caseDescription == caseDescription)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requestStatus, requestStatus) || other.requestStatus == requestStatus)&&(identical(other.familyMembersNumber, familyMembersNumber) || other.familyMembersNumber == familyMembersNumber)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&(identical(other.personalImage, personalImage) || other.personalImage == personalImage)&&(identical(other.residenceDocument, residenceDocument) || other.residenceDocument == residenceDocument)&&const DeepCollectionEquality().equals(other._partners, _partners)&&const DeepCollectionEquality().equals(other._uncles, _uncles)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.group, group) || other.group == group)&&(identical(other.request, request) || other.request == request)&&const DeepCollectionEquality().equals(other._salaries, _salaries)&&const DeepCollectionEquality().equals(other._appointments, _appointments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,fatherName,motherName,birthDate,birthPlace,gender,nationalNumber,job,healthStatus,phoneNumber,mobileNumber,address,residenceType,residenceDocumentId,monthlyIncome,caseDescription,groupId,requestId,requestStatus,familyMembersNumber,medicalHistory,personalImage,residenceDocument,const DeepCollectionEquality().hash(_partners),const DeepCollectionEquality().hash(_uncles),const DeepCollectionEquality().hash(_children),group,request,const DeepCollectionEquality().hash(_salaries),const DeepCollectionEquality().hash(_appointments)]);

@override
String toString() {
  return 'BeneficiaryProfileModel(id: $id, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, motherName: $motherName, birthDate: $birthDate, birthPlace: $birthPlace, gender: $gender, nationalNumber: $nationalNumber, job: $job, healthStatus: $healthStatus, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, address: $address, residenceType: $residenceType, residenceDocumentId: $residenceDocumentId, monthlyIncome: $monthlyIncome, caseDescription: $caseDescription, groupId: $groupId, requestId: $requestId, requestStatus: $requestStatus, familyMembersNumber: $familyMembersNumber, medicalHistory: $medicalHistory, personalImage: $personalImage, residenceDocument: $residenceDocument, partners: $partners, uncles: $uncles, children: $children, group: $group, request: $request, salaries: $salaries, appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryProfileModelCopyWith<$Res> implements $BeneficiaryProfileModelCopyWith<$Res> {
  factory _$BeneficiaryProfileModelCopyWith(_BeneficiaryProfileModel value, $Res Function(_BeneficiaryProfileModel) _then) = __$BeneficiaryProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'father_name') String fatherName,@JsonKey(name: 'mother_name') String motherName,@JsonKey(name: 'birth_date') String birthDate,@JsonKey(name: 'birth_place') String birthPlace, String gender,@JsonKey(name: 'national_number') String nationalNumber, String job,@JsonKey(name: 'health_status') String healthStatus,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'mobile_number') String mobileNumber, String address,@JsonKey(name: 'residence_type') String residenceType,@JsonKey(name: 'residence_document_id') int residenceDocumentId,@JsonKey(name: 'monthly_income') int monthlyIncome,@JsonKey(name: 'case_description') String caseDescription,@JsonKey(name: 'group_id') int groupId,@JsonKey(name: 'request_id') int requestId,@JsonKey(name: 'request_status') String requestStatus,@JsonKey(name: 'family_members_number') int familyMembersNumber,@JsonKey(name: 'medical_history') String? medicalHistory, FileModel personalImage, FileModel residenceDocument, List<PartnerModel> partners, List<UncleModel> uncles, List<ProfileChildModel> children, GroupModel group, RequestModel request, List<SalaryModel> salaries, List<AppointmentModel> appointments
});


@override $FileModelCopyWith<$Res> get personalImage;@override $FileModelCopyWith<$Res> get residenceDocument;@override $GroupModelCopyWith<$Res> get group;@override $RequestModelCopyWith<$Res> get request;

}
/// @nodoc
class __$BeneficiaryProfileModelCopyWithImpl<$Res>
    implements _$BeneficiaryProfileModelCopyWith<$Res> {
  __$BeneficiaryProfileModelCopyWithImpl(this._self, this._then);

  final _BeneficiaryProfileModel _self;
  final $Res Function(_BeneficiaryProfileModel) _then;

/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? fatherName = null,Object? motherName = null,Object? birthDate = null,Object? birthPlace = null,Object? gender = null,Object? nationalNumber = null,Object? job = null,Object? healthStatus = null,Object? phoneNumber = null,Object? mobileNumber = null,Object? address = null,Object? residenceType = null,Object? residenceDocumentId = null,Object? monthlyIncome = null,Object? caseDescription = null,Object? groupId = null,Object? requestId = null,Object? requestStatus = null,Object? familyMembersNumber = null,Object? medicalHistory = freezed,Object? personalImage = null,Object? residenceDocument = null,Object? partners = null,Object? uncles = null,Object? children = null,Object? group = null,Object? request = null,Object? salaries = null,Object? appointments = null,}) {
  return _then(_BeneficiaryProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fatherName: null == fatherName ? _self.fatherName : fatherName // ignore: cast_nullable_to_non_nullable
as String,motherName: null == motherName ? _self.motherName : motherName // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,birthPlace: null == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,nationalNumber: null == nationalNumber ? _self.nationalNumber : nationalNumber // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,residenceType: null == residenceType ? _self.residenceType : residenceType // ignore: cast_nullable_to_non_nullable
as String,residenceDocumentId: null == residenceDocumentId ? _self.residenceDocumentId : residenceDocumentId // ignore: cast_nullable_to_non_nullable
as int,monthlyIncome: null == monthlyIncome ? _self.monthlyIncome : monthlyIncome // ignore: cast_nullable_to_non_nullable
as int,caseDescription: null == caseDescription ? _self.caseDescription : caseDescription // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as int,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,requestStatus: null == requestStatus ? _self.requestStatus : requestStatus // ignore: cast_nullable_to_non_nullable
as String,familyMembersNumber: null == familyMembersNumber ? _self.familyMembersNumber : familyMembersNumber // ignore: cast_nullable_to_non_nullable
as int,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,personalImage: null == personalImage ? _self.personalImage : personalImage // ignore: cast_nullable_to_non_nullable
as FileModel,residenceDocument: null == residenceDocument ? _self.residenceDocument : residenceDocument // ignore: cast_nullable_to_non_nullable
as FileModel,partners: null == partners ? _self._partners : partners // ignore: cast_nullable_to_non_nullable
as List<PartnerModel>,uncles: null == uncles ? _self._uncles : uncles // ignore: cast_nullable_to_non_nullable
as List<UncleModel>,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<ProfileChildModel>,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupModel,request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as RequestModel,salaries: null == salaries ? _self._salaries : salaries // ignore: cast_nullable_to_non_nullable
as List<SalaryModel>,appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}

/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileModelCopyWith<$Res> get personalImage {
  
  return $FileModelCopyWith<$Res>(_self.personalImage, (value) {
    return _then(_self.copyWith(personalImage: value));
  });
}/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileModelCopyWith<$Res> get residenceDocument {
  
  return $FileModelCopyWith<$Res>(_self.residenceDocument, (value) {
    return _then(_self.copyWith(residenceDocument: value));
  });
}/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupModelCopyWith<$Res> get group {
  
  return $GroupModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of BeneficiaryProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestModelCopyWith<$Res> get request {
  
  return $RequestModelCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

// dart format on
