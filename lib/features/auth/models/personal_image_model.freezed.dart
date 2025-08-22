// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonalImageModel {

 int get id; String get file; String get extension;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of PersonalImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalImageModelCopyWith<PersonalImageModel> get copyWith => _$PersonalImageModelCopyWithImpl<PersonalImageModel>(this as PersonalImageModel, _$identity);

  /// Serializes this PersonalImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file,extension,createdAt,updatedAt);

@override
String toString() {
  return 'PersonalImageModel(id: $id, file: $file, extension: $extension, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PersonalImageModelCopyWith<$Res>  {
  factory $PersonalImageModelCopyWith(PersonalImageModel value, $Res Function(PersonalImageModel) _then) = _$PersonalImageModelCopyWithImpl;
@useResult
$Res call({
 int id, String file, String extension,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$PersonalImageModelCopyWithImpl<$Res>
    implements $PersonalImageModelCopyWith<$Res> {
  _$PersonalImageModelCopyWithImpl(this._self, this._then);

  final PersonalImageModel _self;
  final $Res Function(PersonalImageModel) _then;

/// Create a copy of PersonalImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? file = null,Object? extension = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalImageModel].
extension PersonalImageModelPatterns on PersonalImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalImageModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonalImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String file,  String extension, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalImageModel() when $default != null:
return $default(_that.id,_that.file,_that.extension,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String file,  String extension, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PersonalImageModel():
return $default(_that.id,_that.file,_that.extension,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String file,  String extension, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PersonalImageModel() when $default != null:
return $default(_that.id,_that.file,_that.extension,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonalImageModel implements PersonalImageModel {
  const _PersonalImageModel({required this.id, required this.file, required this.extension, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _PersonalImageModel.fromJson(Map<String, dynamic> json) => _$PersonalImageModelFromJson(json);

@override final  int id;
@override final  String file;
@override final  String extension;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of PersonalImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalImageModelCopyWith<_PersonalImageModel> get copyWith => __$PersonalImageModelCopyWithImpl<_PersonalImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file,extension,createdAt,updatedAt);

@override
String toString() {
  return 'PersonalImageModel(id: $id, file: $file, extension: $extension, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PersonalImageModelCopyWith<$Res> implements $PersonalImageModelCopyWith<$Res> {
  factory _$PersonalImageModelCopyWith(_PersonalImageModel value, $Res Function(_PersonalImageModel) _then) = __$PersonalImageModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String file, String extension,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$PersonalImageModelCopyWithImpl<$Res>
    implements _$PersonalImageModelCopyWith<$Res> {
  __$PersonalImageModelCopyWithImpl(this._self, this._then);

  final _PersonalImageModel _self;
  final $Res Function(_PersonalImageModel) _then;

/// Create a copy of PersonalImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? file = null,Object? extension = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PersonalImageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
