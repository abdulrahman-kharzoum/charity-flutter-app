// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanModel {

 int get id; String get name;@JsonKey(name: 'category_id') int get categoryId; CategoryModel get category; String get description; int get portion; PlanBeneficiaryModel get beneficiary;
/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanModelCopyWith<PlanModel> get copyWith => _$PlanModelCopyWithImpl<PlanModel>(this as PlanModel, _$identity);

  /// Serializes this PlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.portion, portion) || other.portion == portion)&&(identical(other.beneficiary, beneficiary) || other.beneficiary == beneficiary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,categoryId,category,description,portion,beneficiary);

@override
String toString() {
  return 'PlanModel(id: $id, name: $name, categoryId: $categoryId, category: $category, description: $description, portion: $portion, beneficiary: $beneficiary)';
}


}

/// @nodoc
abstract mixin class $PlanModelCopyWith<$Res>  {
  factory $PlanModelCopyWith(PlanModel value, $Res Function(PlanModel) _then) = _$PlanModelCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'category_id') int categoryId, CategoryModel category, String description, int portion, PlanBeneficiaryModel beneficiary
});


$CategoryModelCopyWith<$Res> get category;$PlanBeneficiaryModelCopyWith<$Res> get beneficiary;

}
/// @nodoc
class _$PlanModelCopyWithImpl<$Res>
    implements $PlanModelCopyWith<$Res> {
  _$PlanModelCopyWithImpl(this._self, this._then);

  final PlanModel _self;
  final $Res Function(PlanModel) _then;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? categoryId = null,Object? category = null,Object? description = null,Object? portion = null,Object? beneficiary = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as int,beneficiary: null == beneficiary ? _self.beneficiary : beneficiary // ignore: cast_nullable_to_non_nullable
as PlanBeneficiaryModel,
  ));
}
/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanBeneficiaryModelCopyWith<$Res> get beneficiary {
  
  return $PlanBeneficiaryModelCopyWith<$Res>(_self.beneficiary, (value) {
    return _then(_self.copyWith(beneficiary: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlanModel].
extension PlanModelPatterns on PlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanModel value)  $default,){
final _that = this;
switch (_that) {
case _PlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'category_id')  int categoryId,  CategoryModel category,  String description,  int portion,  PlanBeneficiaryModel beneficiary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.category,_that.description,_that.portion,_that.beneficiary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'category_id')  int categoryId,  CategoryModel category,  String description,  int portion,  PlanBeneficiaryModel beneficiary)  $default,) {final _that = this;
switch (_that) {
case _PlanModel():
return $default(_that.id,_that.name,_that.categoryId,_that.category,_that.description,_that.portion,_that.beneficiary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'category_id')  int categoryId,  CategoryModel category,  String description,  int portion,  PlanBeneficiaryModel beneficiary)?  $default,) {final _that = this;
switch (_that) {
case _PlanModel() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.category,_that.description,_that.portion,_that.beneficiary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanModel implements PlanModel {
  const _PlanModel({required this.id, required this.name, @JsonKey(name: 'category_id') required this.categoryId, required this.category, required this.description, required this.portion, required this.beneficiary});
  factory _PlanModel.fromJson(Map<String, dynamic> json) => _$PlanModelFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'category_id') final  int categoryId;
@override final  CategoryModel category;
@override final  String description;
@override final  int portion;
@override final  PlanBeneficiaryModel beneficiary;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanModelCopyWith<_PlanModel> get copyWith => __$PlanModelCopyWithImpl<_PlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.portion, portion) || other.portion == portion)&&(identical(other.beneficiary, beneficiary) || other.beneficiary == beneficiary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,categoryId,category,description,portion,beneficiary);

@override
String toString() {
  return 'PlanModel(id: $id, name: $name, categoryId: $categoryId, category: $category, description: $description, portion: $portion, beneficiary: $beneficiary)';
}


}

/// @nodoc
abstract mixin class _$PlanModelCopyWith<$Res> implements $PlanModelCopyWith<$Res> {
  factory _$PlanModelCopyWith(_PlanModel value, $Res Function(_PlanModel) _then) = __$PlanModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'category_id') int categoryId, CategoryModel category, String description, int portion, PlanBeneficiaryModel beneficiary
});


@override $CategoryModelCopyWith<$Res> get category;@override $PlanBeneficiaryModelCopyWith<$Res> get beneficiary;

}
/// @nodoc
class __$PlanModelCopyWithImpl<$Res>
    implements _$PlanModelCopyWith<$Res> {
  __$PlanModelCopyWithImpl(this._self, this._then);

  final _PlanModel _self;
  final $Res Function(_PlanModel) _then;

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? categoryId = null,Object? category = null,Object? description = null,Object? portion = null,Object? beneficiary = null,}) {
  return _then(_PlanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,portion: null == portion ? _self.portion : portion // ignore: cast_nullable_to_non_nullable
as int,beneficiary: null == beneficiary ? _self.beneficiary : beneficiary // ignore: cast_nullable_to_non_nullable
as PlanBeneficiaryModel,
  ));
}

/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of PlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanBeneficiaryModelCopyWith<$Res> get beneficiary {
  
  return $PlanBeneficiaryModelCopyWith<$Res>(_self.beneficiary, (value) {
    return _then(_self.copyWith(beneficiary: value));
  });
}
}

// dart format on
