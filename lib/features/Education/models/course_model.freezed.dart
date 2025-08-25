// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {

 int get id; String get name; String get status;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'finish_date') String? get finishDate;@JsonKey(name: 'first_payment_amount') int get firstPaymentAmount; int get price;@JsonKey(name: 'payment_deadline_days') int get paymentDeadlineDays; SubjectModel get subject; TeacherModel? get teacher;
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModelCopyWith<CourseModel> get copyWith => _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.firstPaymentAmount, firstPaymentAmount) || other.firstPaymentAmount == firstPaymentAmount)&&(identical(other.price, price) || other.price == price)&&(identical(other.paymentDeadlineDays, paymentDeadlineDays) || other.paymentDeadlineDays == paymentDeadlineDays)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.teacher, teacher) || other.teacher == teacher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,startDate,finishDate,firstPaymentAmount,price,paymentDeadlineDays,subject,teacher);

@override
String toString() {
  return 'CourseModel(id: $id, name: $name, status: $status, startDate: $startDate, finishDate: $finishDate, firstPaymentAmount: $firstPaymentAmount, price: $price, paymentDeadlineDays: $paymentDeadlineDays, subject: $subject, teacher: $teacher)';
}


}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res>  {
  factory $CourseModelCopyWith(CourseModel value, $Res Function(CourseModel) _then) = _$CourseModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'finish_date') String? finishDate,@JsonKey(name: 'first_payment_amount') int firstPaymentAmount, int price,@JsonKey(name: 'payment_deadline_days') int paymentDeadlineDays, SubjectModel subject, TeacherModel? teacher
});


$SubjectModelCopyWith<$Res> get subject;$TeacherModelCopyWith<$Res>? get teacher;

}
/// @nodoc
class _$CourseModelCopyWithImpl<$Res>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? startDate = freezed,Object? finishDate = freezed,Object? firstPaymentAmount = null,Object? price = null,Object? paymentDeadlineDays = null,Object? subject = null,Object? teacher = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as String?,firstPaymentAmount: null == firstPaymentAmount ? _self.firstPaymentAmount : firstPaymentAmount // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,paymentDeadlineDays: null == paymentDeadlineDays ? _self.paymentDeadlineDays : paymentDeadlineDays // ignore: cast_nullable_to_non_nullable
as int,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectModel,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as TeacherModel?,
  ));
}
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectModelCopyWith<$Res> get subject {
  
  return $SubjectModelCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherModelCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $TeacherModelCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [CourseModel].
extension CourseModelPatterns on CourseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseModel value)  $default,){
final _that = this;
switch (_that) {
case _CourseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String status, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'finish_date')  String? finishDate, @JsonKey(name: 'first_payment_amount')  int firstPaymentAmount,  int price, @JsonKey(name: 'payment_deadline_days')  int paymentDeadlineDays,  SubjectModel subject,  TeacherModel? teacher)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.startDate,_that.finishDate,_that.firstPaymentAmount,_that.price,_that.paymentDeadlineDays,_that.subject,_that.teacher);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String status, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'finish_date')  String? finishDate, @JsonKey(name: 'first_payment_amount')  int firstPaymentAmount,  int price, @JsonKey(name: 'payment_deadline_days')  int paymentDeadlineDays,  SubjectModel subject,  TeacherModel? teacher)  $default,) {final _that = this;
switch (_that) {
case _CourseModel():
return $default(_that.id,_that.name,_that.status,_that.startDate,_that.finishDate,_that.firstPaymentAmount,_that.price,_that.paymentDeadlineDays,_that.subject,_that.teacher);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String status, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'finish_date')  String? finishDate, @JsonKey(name: 'first_payment_amount')  int firstPaymentAmount,  int price, @JsonKey(name: 'payment_deadline_days')  int paymentDeadlineDays,  SubjectModel subject,  TeacherModel? teacher)?  $default,) {final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.startDate,_that.finishDate,_that.firstPaymentAmount,_that.price,_that.paymentDeadlineDays,_that.subject,_that.teacher);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseModel implements CourseModel {
  const _CourseModel({required this.id, required this.name, required this.status, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'finish_date') required this.finishDate, @JsonKey(name: 'first_payment_amount') required this.firstPaymentAmount, required this.price, @JsonKey(name: 'payment_deadline_days') required this.paymentDeadlineDays, required this.subject, required this.teacher});
  factory _CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String status;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'finish_date') final  String? finishDate;
@override@JsonKey(name: 'first_payment_amount') final  int firstPaymentAmount;
@override final  int price;
@override@JsonKey(name: 'payment_deadline_days') final  int paymentDeadlineDays;
@override final  SubjectModel subject;
@override final  TeacherModel? teacher;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModelCopyWith<_CourseModel> get copyWith => __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.firstPaymentAmount, firstPaymentAmount) || other.firstPaymentAmount == firstPaymentAmount)&&(identical(other.price, price) || other.price == price)&&(identical(other.paymentDeadlineDays, paymentDeadlineDays) || other.paymentDeadlineDays == paymentDeadlineDays)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.teacher, teacher) || other.teacher == teacher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,startDate,finishDate,firstPaymentAmount,price,paymentDeadlineDays,subject,teacher);

@override
String toString() {
  return 'CourseModel(id: $id, name: $name, status: $status, startDate: $startDate, finishDate: $finishDate, firstPaymentAmount: $firstPaymentAmount, price: $price, paymentDeadlineDays: $paymentDeadlineDays, subject: $subject, teacher: $teacher)';
}


}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res> implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(_CourseModel value, $Res Function(_CourseModel) _then) = __$CourseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'finish_date') String? finishDate,@JsonKey(name: 'first_payment_amount') int firstPaymentAmount, int price,@JsonKey(name: 'payment_deadline_days') int paymentDeadlineDays, SubjectModel subject, TeacherModel? teacher
});


@override $SubjectModelCopyWith<$Res> get subject;@override $TeacherModelCopyWith<$Res>? get teacher;

}
/// @nodoc
class __$CourseModelCopyWithImpl<$Res>
    implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? startDate = freezed,Object? finishDate = freezed,Object? firstPaymentAmount = null,Object? price = null,Object? paymentDeadlineDays = null,Object? subject = null,Object? teacher = freezed,}) {
  return _then(_CourseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as String?,firstPaymentAmount: null == firstPaymentAmount ? _self.firstPaymentAmount : firstPaymentAmount // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,paymentDeadlineDays: null == paymentDeadlineDays ? _self.paymentDeadlineDays : paymentDeadlineDays // ignore: cast_nullable_to_non_nullable
as int,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectModel,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as TeacherModel?,
  ));
}

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectModelCopyWith<$Res> get subject {
  
  return $SubjectModelCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherModelCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $TeacherModelCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}
}

// dart format on
