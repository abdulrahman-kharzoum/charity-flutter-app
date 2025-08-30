// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationDataModel {

 String get title; String get body; List<dynamic> get payload; String? get url;@JsonKey(name: 'notified_at') String get notifiedAt;
/// Create a copy of NotificationDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDataModelCopyWith<NotificationDataModel> get copyWith => _$NotificationDataModelCopyWithImpl<NotificationDataModel>(this as NotificationDataModel, _$identity);

  /// Serializes this NotificationDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDataModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.url, url) || other.url == url)&&(identical(other.notifiedAt, notifiedAt) || other.notifiedAt == notifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,const DeepCollectionEquality().hash(payload),url,notifiedAt);

@override
String toString() {
  return 'NotificationDataModel(title: $title, body: $body, payload: $payload, url: $url, notifiedAt: $notifiedAt)';
}


}

/// @nodoc
abstract mixin class $NotificationDataModelCopyWith<$Res>  {
  factory $NotificationDataModelCopyWith(NotificationDataModel value, $Res Function(NotificationDataModel) _then) = _$NotificationDataModelCopyWithImpl;
@useResult
$Res call({
 String title, String body, List<dynamic> payload, String? url,@JsonKey(name: 'notified_at') String notifiedAt
});




}
/// @nodoc
class _$NotificationDataModelCopyWithImpl<$Res>
    implements $NotificationDataModelCopyWith<$Res> {
  _$NotificationDataModelCopyWithImpl(this._self, this._then);

  final NotificationDataModel _self;
  final $Res Function(NotificationDataModel) _then;

/// Create a copy of NotificationDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,Object? payload = null,Object? url = freezed,Object? notifiedAt = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<dynamic>,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,notifiedAt: null == notifiedAt ? _self.notifiedAt : notifiedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationDataModel].
extension NotificationDataModelPatterns on NotificationDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDataModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String body,  List<dynamic> payload,  String? url, @JsonKey(name: 'notified_at')  String notifiedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDataModel() when $default != null:
return $default(_that.title,_that.body,_that.payload,_that.url,_that.notifiedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String body,  List<dynamic> payload,  String? url, @JsonKey(name: 'notified_at')  String notifiedAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationDataModel():
return $default(_that.title,_that.body,_that.payload,_that.url,_that.notifiedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String body,  List<dynamic> payload,  String? url, @JsonKey(name: 'notified_at')  String notifiedAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDataModel() when $default != null:
return $default(_that.title,_that.body,_that.payload,_that.url,_that.notifiedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDataModel implements NotificationDataModel {
  const _NotificationDataModel({required this.title, required this.body, required final  List<dynamic> payload, required this.url, @JsonKey(name: 'notified_at') required this.notifiedAt}): _payload = payload;
  factory _NotificationDataModel.fromJson(Map<String, dynamic> json) => _$NotificationDataModelFromJson(json);

@override final  String title;
@override final  String body;
 final  List<dynamic> _payload;
@override List<dynamic> get payload {
  if (_payload is EqualUnmodifiableListView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payload);
}

@override final  String? url;
@override@JsonKey(name: 'notified_at') final  String notifiedAt;

/// Create a copy of NotificationDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDataModelCopyWith<_NotificationDataModel> get copyWith => __$NotificationDataModelCopyWithImpl<_NotificationDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDataModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._payload, _payload)&&(identical(other.url, url) || other.url == url)&&(identical(other.notifiedAt, notifiedAt) || other.notifiedAt == notifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,const DeepCollectionEquality().hash(_payload),url,notifiedAt);

@override
String toString() {
  return 'NotificationDataModel(title: $title, body: $body, payload: $payload, url: $url, notifiedAt: $notifiedAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationDataModelCopyWith<$Res> implements $NotificationDataModelCopyWith<$Res> {
  factory _$NotificationDataModelCopyWith(_NotificationDataModel value, $Res Function(_NotificationDataModel) _then) = __$NotificationDataModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String body, List<dynamic> payload, String? url,@JsonKey(name: 'notified_at') String notifiedAt
});




}
/// @nodoc
class __$NotificationDataModelCopyWithImpl<$Res>
    implements _$NotificationDataModelCopyWith<$Res> {
  __$NotificationDataModelCopyWithImpl(this._self, this._then);

  final _NotificationDataModel _self;
  final $Res Function(_NotificationDataModel) _then;

/// Create a copy of NotificationDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? payload = null,Object? url = freezed,Object? notifiedAt = null,}) {
  return _then(_NotificationDataModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as List<dynamic>,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,notifiedAt: null == notifiedAt ? _self.notifiedAt : notifiedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
