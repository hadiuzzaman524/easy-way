// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteInfo {

 List<LatLng> get polyline; String get distance; String get duration;
/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteInfoCopyWith<RouteInfo> get copyWith => _$RouteInfoCopyWithImpl<RouteInfo>(this as RouteInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteInfo&&const DeepCollectionEquality().equals(other.polyline, polyline)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(polyline),distance,duration);

@override
String toString() {
  return 'RouteInfo(polyline: $polyline, distance: $distance, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $RouteInfoCopyWith<$Res>  {
  factory $RouteInfoCopyWith(RouteInfo value, $Res Function(RouteInfo) _then) = _$RouteInfoCopyWithImpl;
@useResult
$Res call({
 List<LatLng> polyline, String distance, String duration
});




}
/// @nodoc
class _$RouteInfoCopyWithImpl<$Res>
    implements $RouteInfoCopyWith<$Res> {
  _$RouteInfoCopyWithImpl(this._self, this._then);

  final RouteInfo _self;
  final $Res Function(RouteInfo) _then;

/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? polyline = null,Object? distance = null,Object? duration = null,}) {
  return _then(_self.copyWith(
polyline: null == polyline ? _self.polyline : polyline // ignore: cast_nullable_to_non_nullable
as List<LatLng>,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteInfo].
extension RouteInfoPatterns on RouteInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteInfo value)  $default,){
final _that = this;
switch (_that) {
case _RouteInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LatLng> polyline,  String distance,  String duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
return $default(_that.polyline,_that.distance,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LatLng> polyline,  String distance,  String duration)  $default,) {final _that = this;
switch (_that) {
case _RouteInfo():
return $default(_that.polyline,_that.distance,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LatLng> polyline,  String distance,  String duration)?  $default,) {final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
return $default(_that.polyline,_that.distance,_that.duration);case _:
  return null;

}
}

}

/// @nodoc


class _RouteInfo implements RouteInfo {
  const _RouteInfo({required final  List<LatLng> polyline, required this.distance, required this.duration}): _polyline = polyline;
  

 final  List<LatLng> _polyline;
@override List<LatLng> get polyline {
  if (_polyline is EqualUnmodifiableListView) return _polyline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_polyline);
}

@override final  String distance;
@override final  String duration;

/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteInfoCopyWith<_RouteInfo> get copyWith => __$RouteInfoCopyWithImpl<_RouteInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteInfo&&const DeepCollectionEquality().equals(other._polyline, _polyline)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_polyline),distance,duration);

@override
String toString() {
  return 'RouteInfo(polyline: $polyline, distance: $distance, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$RouteInfoCopyWith<$Res> implements $RouteInfoCopyWith<$Res> {
  factory _$RouteInfoCopyWith(_RouteInfo value, $Res Function(_RouteInfo) _then) = __$RouteInfoCopyWithImpl;
@override @useResult
$Res call({
 List<LatLng> polyline, String distance, String duration
});




}
/// @nodoc
class __$RouteInfoCopyWithImpl<$Res>
    implements _$RouteInfoCopyWith<$Res> {
  __$RouteInfoCopyWithImpl(this._self, this._then);

  final _RouteInfo _self;
  final $Res Function(_RouteInfo) _then;

/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? polyline = null,Object? distance = null,Object? duration = null,}) {
  return _then(_RouteInfo(
polyline: null == polyline ? _self._polyline : polyline // ignore: cast_nullable_to_non_nullable
as List<LatLng>,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
