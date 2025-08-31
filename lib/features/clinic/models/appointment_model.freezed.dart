// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentModel {

 int get id;@JsonKey(name: 'owner_id') int get ownerId;@JsonKey(name: 'owner_type') String get ownerType; String get date;@JsonKey(name: 'start_time') String get startTime;@JsonKey(name: 'end_time') String get endTime; int get price; String get reason; String get status; String? get result; int? get discount;
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<AppointmentModel> get copyWith => _$AppointmentModelCopyWithImpl<AppointmentModel>(this as AppointmentModel, _$identity);

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.result, result) || other.result == result)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerId,ownerType,date,startTime,endTime,price,reason,status,result,discount);

@override
String toString() {
  return 'AppointmentModel(id: $id, ownerId: $ownerId, ownerType: $ownerType, date: $date, startTime: $startTime, endTime: $endTime, price: $price, reason: $reason, status: $status, result: $result, discount: $discount)';
}


}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res>  {
  factory $AppointmentModelCopyWith(AppointmentModel value, $Res Function(AppointmentModel) _then) = _$AppointmentModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'owner_id') int ownerId,@JsonKey(name: 'owner_type') String ownerType, String date,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime, int price, String reason, String status, String? result, int? discount
});




}
/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._self, this._then);

  final AppointmentModel _self;
  final $Res Function(AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerId = null,Object? ownerType = null,Object? date = null,Object? startTime = null,Object? endTime = null,Object? price = null,Object? reason = null,Object? status = null,Object? result = freezed,Object? discount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as int,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentModel].
extension AppointmentModelPatterns on AppointmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'owner_id')  int ownerId, @JsonKey(name: 'owner_type')  String ownerType,  String date, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime,  int price,  String reason,  String status,  String? result,  int? discount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.ownerId,_that.ownerType,_that.date,_that.startTime,_that.endTime,_that.price,_that.reason,_that.status,_that.result,_that.discount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'owner_id')  int ownerId, @JsonKey(name: 'owner_type')  String ownerType,  String date, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime,  int price,  String reason,  String status,  String? result,  int? discount)  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel():
return $default(_that.id,_that.ownerId,_that.ownerType,_that.date,_that.startTime,_that.endTime,_that.price,_that.reason,_that.status,_that.result,_that.discount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'owner_id')  int ownerId, @JsonKey(name: 'owner_type')  String ownerType,  String date, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime,  int price,  String reason,  String status,  String? result,  int? discount)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.ownerId,_that.ownerType,_that.date,_that.startTime,_that.endTime,_that.price,_that.reason,_that.status,_that.result,_that.discount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentModel implements AppointmentModel {
  const _AppointmentModel({required this.id, @JsonKey(name: 'owner_id') required this.ownerId, @JsonKey(name: 'owner_type') required this.ownerType, required this.date, @JsonKey(name: 'start_time') required this.startTime, @JsonKey(name: 'end_time') required this.endTime, required this.price, required this.reason, required this.status, required this.result, required this.discount});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'owner_id') final  int ownerId;
@override@JsonKey(name: 'owner_type') final  String ownerType;
@override final  String date;
@override@JsonKey(name: 'start_time') final  String startTime;
@override@JsonKey(name: 'end_time') final  String endTime;
@override final  int price;
@override final  String reason;
@override final  String status;
@override final  String? result;
@override final  int? discount;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentModelCopyWith<_AppointmentModel> get copyWith => __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.price, price) || other.price == price)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.result, result) || other.result == result)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerId,ownerType,date,startTime,endTime,price,reason,status,result,discount);

@override
String toString() {
  return 'AppointmentModel(id: $id, ownerId: $ownerId, ownerType: $ownerType, date: $date, startTime: $startTime, endTime: $endTime, price: $price, reason: $reason, status: $status, result: $result, discount: $discount)';
}


}

/// @nodoc
abstract mixin class _$AppointmentModelCopyWith<$Res> implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(_AppointmentModel value, $Res Function(_AppointmentModel) _then) = __$AppointmentModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'owner_id') int ownerId,@JsonKey(name: 'owner_type') String ownerType, String date,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime, int price, String reason, String status, String? result, int? discount
});




}
/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(this._self, this._then);

  final _AppointmentModel _self;
  final $Res Function(_AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerId = null,Object? ownerType = null,Object? date = null,Object? startTime = null,Object? endTime = null,Object? price = null,Object? reason = null,Object? status = null,Object? result = freezed,Object? discount = freezed,}) {
  return _then(_AppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as int,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,discount: freezed == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
