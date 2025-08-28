// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupModel {

 int get id; String get name; int get salary; String get color;@JsonKey(name: 'number_of_beneficiaries') int get numberOfBeneficiaries;@JsonKey(name: 'percentage_of_beneficiaries') int get percentageOfBeneficiaries; List<dynamic> get conditions;
/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupModelCopyWith<GroupModel> get copyWith => _$GroupModelCopyWithImpl<GroupModel>(this as GroupModel, _$identity);

  /// Serializes this GroupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.color, color) || other.color == color)&&(identical(other.numberOfBeneficiaries, numberOfBeneficiaries) || other.numberOfBeneficiaries == numberOfBeneficiaries)&&(identical(other.percentageOfBeneficiaries, percentageOfBeneficiaries) || other.percentageOfBeneficiaries == percentageOfBeneficiaries)&&const DeepCollectionEquality().equals(other.conditions, conditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,salary,color,numberOfBeneficiaries,percentageOfBeneficiaries,const DeepCollectionEquality().hash(conditions));

@override
String toString() {
  return 'GroupModel(id: $id, name: $name, salary: $salary, color: $color, numberOfBeneficiaries: $numberOfBeneficiaries, percentageOfBeneficiaries: $percentageOfBeneficiaries, conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class $GroupModelCopyWith<$Res>  {
  factory $GroupModelCopyWith(GroupModel value, $Res Function(GroupModel) _then) = _$GroupModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int salary, String color,@JsonKey(name: 'number_of_beneficiaries') int numberOfBeneficiaries,@JsonKey(name: 'percentage_of_beneficiaries') int percentageOfBeneficiaries, List<dynamic> conditions
});




}
/// @nodoc
class _$GroupModelCopyWithImpl<$Res>
    implements $GroupModelCopyWith<$Res> {
  _$GroupModelCopyWithImpl(this._self, this._then);

  final GroupModel _self;
  final $Res Function(GroupModel) _then;

/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? salary = null,Object? color = null,Object? numberOfBeneficiaries = null,Object? percentageOfBeneficiaries = null,Object? conditions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,numberOfBeneficiaries: null == numberOfBeneficiaries ? _self.numberOfBeneficiaries : numberOfBeneficiaries // ignore: cast_nullable_to_non_nullable
as int,percentageOfBeneficiaries: null == percentageOfBeneficiaries ? _self.percentageOfBeneficiaries : percentageOfBeneficiaries // ignore: cast_nullable_to_non_nullable
as int,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupModel].
extension GroupModelPatterns on GroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int salary,  String color, @JsonKey(name: 'number_of_beneficiaries')  int numberOfBeneficiaries, @JsonKey(name: 'percentage_of_beneficiaries')  int percentageOfBeneficiaries,  List<dynamic> conditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
return $default(_that.id,_that.name,_that.salary,_that.color,_that.numberOfBeneficiaries,_that.percentageOfBeneficiaries,_that.conditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int salary,  String color, @JsonKey(name: 'number_of_beneficiaries')  int numberOfBeneficiaries, @JsonKey(name: 'percentage_of_beneficiaries')  int percentageOfBeneficiaries,  List<dynamic> conditions)  $default,) {final _that = this;
switch (_that) {
case _GroupModel():
return $default(_that.id,_that.name,_that.salary,_that.color,_that.numberOfBeneficiaries,_that.percentageOfBeneficiaries,_that.conditions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int salary,  String color, @JsonKey(name: 'number_of_beneficiaries')  int numberOfBeneficiaries, @JsonKey(name: 'percentage_of_beneficiaries')  int percentageOfBeneficiaries,  List<dynamic> conditions)?  $default,) {final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
return $default(_that.id,_that.name,_that.salary,_that.color,_that.numberOfBeneficiaries,_that.percentageOfBeneficiaries,_that.conditions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupModel implements GroupModel {
  const _GroupModel({required this.id, required this.name, required this.salary, required this.color, @JsonKey(name: 'number_of_beneficiaries') required this.numberOfBeneficiaries, @JsonKey(name: 'percentage_of_beneficiaries') required this.percentageOfBeneficiaries, required final  List<dynamic> conditions}): _conditions = conditions;
  factory _GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int salary;
@override final  String color;
@override@JsonKey(name: 'number_of_beneficiaries') final  int numberOfBeneficiaries;
@override@JsonKey(name: 'percentage_of_beneficiaries') final  int percentageOfBeneficiaries;
 final  List<dynamic> _conditions;
@override List<dynamic> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}


/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupModelCopyWith<_GroupModel> get copyWith => __$GroupModelCopyWithImpl<_GroupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.color, color) || other.color == color)&&(identical(other.numberOfBeneficiaries, numberOfBeneficiaries) || other.numberOfBeneficiaries == numberOfBeneficiaries)&&(identical(other.percentageOfBeneficiaries, percentageOfBeneficiaries) || other.percentageOfBeneficiaries == percentageOfBeneficiaries)&&const DeepCollectionEquality().equals(other._conditions, _conditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,salary,color,numberOfBeneficiaries,percentageOfBeneficiaries,const DeepCollectionEquality().hash(_conditions));

@override
String toString() {
  return 'GroupModel(id: $id, name: $name, salary: $salary, color: $color, numberOfBeneficiaries: $numberOfBeneficiaries, percentageOfBeneficiaries: $percentageOfBeneficiaries, conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class _$GroupModelCopyWith<$Res> implements $GroupModelCopyWith<$Res> {
  factory _$GroupModelCopyWith(_GroupModel value, $Res Function(_GroupModel) _then) = __$GroupModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int salary, String color,@JsonKey(name: 'number_of_beneficiaries') int numberOfBeneficiaries,@JsonKey(name: 'percentage_of_beneficiaries') int percentageOfBeneficiaries, List<dynamic> conditions
});




}
/// @nodoc
class __$GroupModelCopyWithImpl<$Res>
    implements _$GroupModelCopyWith<$Res> {
  __$GroupModelCopyWithImpl(this._self, this._then);

  final _GroupModel _self;
  final $Res Function(_GroupModel) _then;

/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? salary = null,Object? color = null,Object? numberOfBeneficiaries = null,Object? percentageOfBeneficiaries = null,Object? conditions = null,}) {
  return _then(_GroupModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,numberOfBeneficiaries: null == numberOfBeneficiaries ? _self.numberOfBeneficiaries : numberOfBeneficiaries // ignore: cast_nullable_to_non_nullable
as int,percentageOfBeneficiaries: null == percentageOfBeneficiaries ? _self.percentageOfBeneficiaries : percentageOfBeneficiaries // ignore: cast_nullable_to_non_nullable
as int,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
