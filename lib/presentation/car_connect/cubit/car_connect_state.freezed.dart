// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_connect_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CarConnectState {

 LatLng? get origin; LatLng? get destination; Set<Marker> get markers; List<LatLng> get polylines; String? get distance; String? get duration; bool get isLoading; LatLng? get currentLocation; bool get showCurrentLocationMarker;
/// Create a copy of CarConnectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarConnectStateCopyWith<CarConnectState> get copyWith => _$CarConnectStateCopyWithImpl<CarConnectState>(this as CarConnectState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarConnectState&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&const DeepCollectionEquality().equals(other.markers, markers)&&const DeepCollectionEquality().equals(other.polylines, polylines)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.showCurrentLocationMarker, showCurrentLocationMarker) || other.showCurrentLocationMarker == showCurrentLocationMarker));
}


@override
int get hashCode => Object.hash(runtimeType,origin,destination,const DeepCollectionEquality().hash(markers),const DeepCollectionEquality().hash(polylines),distance,duration,isLoading,currentLocation,showCurrentLocationMarker);

@override
String toString() {
  return 'CarConnectState(origin: $origin, destination: $destination, markers: $markers, polylines: $polylines, distance: $distance, duration: $duration, isLoading: $isLoading, currentLocation: $currentLocation, showCurrentLocationMarker: $showCurrentLocationMarker)';
}


}

/// @nodoc
abstract mixin class $CarConnectStateCopyWith<$Res>  {
  factory $CarConnectStateCopyWith(CarConnectState value, $Res Function(CarConnectState) _then) = _$CarConnectStateCopyWithImpl;
@useResult
$Res call({
 LatLng? origin, LatLng? destination, Set<Marker> markers, List<LatLng> polylines, String? distance, String? duration, bool isLoading, LatLng? currentLocation, bool showCurrentLocationMarker
});




}
/// @nodoc
class _$CarConnectStateCopyWithImpl<$Res>
    implements $CarConnectStateCopyWith<$Res> {
  _$CarConnectStateCopyWithImpl(this._self, this._then);

  final CarConnectState _self;
  final $Res Function(CarConnectState) _then;

/// Create a copy of CarConnectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? origin = freezed,Object? destination = freezed,Object? markers = null,Object? polylines = null,Object? distance = freezed,Object? duration = freezed,Object? isLoading = null,Object? currentLocation = freezed,Object? showCurrentLocationMarker = null,}) {
  return _then(_self.copyWith(
origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as LatLng?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as LatLng?,markers: null == markers ? _self.markers : markers // ignore: cast_nullable_to_non_nullable
as Set<Marker>,polylines: null == polylines ? _self.polylines : polylines // ignore: cast_nullable_to_non_nullable
as List<LatLng>,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,showCurrentLocationMarker: null == showCurrentLocationMarker ? _self.showCurrentLocationMarker : showCurrentLocationMarker // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CarConnectState].
extension CarConnectStatePatterns on CarConnectState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarConnectState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarConnectState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarConnectState value)  $default,){
final _that = this;
switch (_that) {
case _CarConnectState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarConnectState value)?  $default,){
final _that = this;
switch (_that) {
case _CarConnectState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng? origin,  LatLng? destination,  Set<Marker> markers,  List<LatLng> polylines,  String? distance,  String? duration,  bool isLoading,  LatLng? currentLocation,  bool showCurrentLocationMarker)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarConnectState() when $default != null:
return $default(_that.origin,_that.destination,_that.markers,_that.polylines,_that.distance,_that.duration,_that.isLoading,_that.currentLocation,_that.showCurrentLocationMarker);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng? origin,  LatLng? destination,  Set<Marker> markers,  List<LatLng> polylines,  String? distance,  String? duration,  bool isLoading,  LatLng? currentLocation,  bool showCurrentLocationMarker)  $default,) {final _that = this;
switch (_that) {
case _CarConnectState():
return $default(_that.origin,_that.destination,_that.markers,_that.polylines,_that.distance,_that.duration,_that.isLoading,_that.currentLocation,_that.showCurrentLocationMarker);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng? origin,  LatLng? destination,  Set<Marker> markers,  List<LatLng> polylines,  String? distance,  String? duration,  bool isLoading,  LatLng? currentLocation,  bool showCurrentLocationMarker)?  $default,) {final _that = this;
switch (_that) {
case _CarConnectState() when $default != null:
return $default(_that.origin,_that.destination,_that.markers,_that.polylines,_that.distance,_that.duration,_that.isLoading,_that.currentLocation,_that.showCurrentLocationMarker);case _:
  return null;

}
}

}

/// @nodoc


class _CarConnectState implements CarConnectState {
  const _CarConnectState({this.origin, this.destination, final  Set<Marker> markers = const <Marker>{}, final  List<LatLng> polylines = const [], this.distance, this.duration, this.isLoading = false, this.currentLocation, this.showCurrentLocationMarker = true}): _markers = markers,_polylines = polylines;
  

@override final  LatLng? origin;
@override final  LatLng? destination;
 final  Set<Marker> _markers;
@override@JsonKey() Set<Marker> get markers {
  if (_markers is EqualUnmodifiableSetView) return _markers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_markers);
}

 final  List<LatLng> _polylines;
@override@JsonKey() List<LatLng> get polylines {
  if (_polylines is EqualUnmodifiableListView) return _polylines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_polylines);
}

@override final  String? distance;
@override final  String? duration;
@override@JsonKey() final  bool isLoading;
@override final  LatLng? currentLocation;
@override@JsonKey() final  bool showCurrentLocationMarker;

/// Create a copy of CarConnectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarConnectStateCopyWith<_CarConnectState> get copyWith => __$CarConnectStateCopyWithImpl<_CarConnectState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarConnectState&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&const DeepCollectionEquality().equals(other._markers, _markers)&&const DeepCollectionEquality().equals(other._polylines, _polylines)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.showCurrentLocationMarker, showCurrentLocationMarker) || other.showCurrentLocationMarker == showCurrentLocationMarker));
}


@override
int get hashCode => Object.hash(runtimeType,origin,destination,const DeepCollectionEquality().hash(_markers),const DeepCollectionEquality().hash(_polylines),distance,duration,isLoading,currentLocation,showCurrentLocationMarker);

@override
String toString() {
  return 'CarConnectState(origin: $origin, destination: $destination, markers: $markers, polylines: $polylines, distance: $distance, duration: $duration, isLoading: $isLoading, currentLocation: $currentLocation, showCurrentLocationMarker: $showCurrentLocationMarker)';
}


}

/// @nodoc
abstract mixin class _$CarConnectStateCopyWith<$Res> implements $CarConnectStateCopyWith<$Res> {
  factory _$CarConnectStateCopyWith(_CarConnectState value, $Res Function(_CarConnectState) _then) = __$CarConnectStateCopyWithImpl;
@override @useResult
$Res call({
 LatLng? origin, LatLng? destination, Set<Marker> markers, List<LatLng> polylines, String? distance, String? duration, bool isLoading, LatLng? currentLocation, bool showCurrentLocationMarker
});




}
/// @nodoc
class __$CarConnectStateCopyWithImpl<$Res>
    implements _$CarConnectStateCopyWith<$Res> {
  __$CarConnectStateCopyWithImpl(this._self, this._then);

  final _CarConnectState _self;
  final $Res Function(_CarConnectState) _then;

/// Create a copy of CarConnectState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? origin = freezed,Object? destination = freezed,Object? markers = null,Object? polylines = null,Object? distance = freezed,Object? duration = freezed,Object? isLoading = null,Object? currentLocation = freezed,Object? showCurrentLocationMarker = null,}) {
  return _then(_CarConnectState(
origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as LatLng?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as LatLng?,markers: null == markers ? _self._markers : markers // ignore: cast_nullable_to_non_nullable
as Set<Marker>,polylines: null == polylines ? _self._polylines : polylines // ignore: cast_nullable_to_non_nullable
as List<LatLng>,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,showCurrentLocationMarker: null == showCurrentLocationMarker ? _self.showCurrentLocationMarker : showCurrentLocationMarker // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
