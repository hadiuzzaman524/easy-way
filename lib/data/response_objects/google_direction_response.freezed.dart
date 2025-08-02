// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_direction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleDirectionResponse {

@JsonKey(name: "geocoded_waypoints") List<GeocodedWaypoint>? get geocodedWaypoints;@JsonKey(name: "routes") List<Route>? get routes;@JsonKey(name: "status") String? get status;
/// Create a copy of GoogleDirectionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleDirectionResponseCopyWith<GoogleDirectionResponse> get copyWith => _$GoogleDirectionResponseCopyWithImpl<GoogleDirectionResponse>(this as GoogleDirectionResponse, _$identity);

  /// Serializes this GoogleDirectionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleDirectionResponse&&const DeepCollectionEquality().equals(other.geocodedWaypoints, geocodedWaypoints)&&const DeepCollectionEquality().equals(other.routes, routes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(geocodedWaypoints),const DeepCollectionEquality().hash(routes),status);

@override
String toString() {
  return 'GoogleDirectionResponse(geocodedWaypoints: $geocodedWaypoints, routes: $routes, status: $status)';
}


}

/// @nodoc
abstract mixin class $GoogleDirectionResponseCopyWith<$Res>  {
  factory $GoogleDirectionResponseCopyWith(GoogleDirectionResponse value, $Res Function(GoogleDirectionResponse) _then) = _$GoogleDirectionResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "geocoded_waypoints") List<GeocodedWaypoint>? geocodedWaypoints,@JsonKey(name: "routes") List<Route>? routes,@JsonKey(name: "status") String? status
});




}
/// @nodoc
class _$GoogleDirectionResponseCopyWithImpl<$Res>
    implements $GoogleDirectionResponseCopyWith<$Res> {
  _$GoogleDirectionResponseCopyWithImpl(this._self, this._then);

  final GoogleDirectionResponse _self;
  final $Res Function(GoogleDirectionResponse) _then;

/// Create a copy of GoogleDirectionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? geocodedWaypoints = freezed,Object? routes = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
geocodedWaypoints: freezed == geocodedWaypoints ? _self.geocodedWaypoints : geocodedWaypoints // ignore: cast_nullable_to_non_nullable
as List<GeocodedWaypoint>?,routes: freezed == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<Route>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleDirectionResponse].
extension GoogleDirectionResponsePatterns on GoogleDirectionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleDirectionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleDirectionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleDirectionResponse value)  $default,){
final _that = this;
switch (_that) {
case _GoogleDirectionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleDirectionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleDirectionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "geocoded_waypoints")  List<GeocodedWaypoint>? geocodedWaypoints, @JsonKey(name: "routes")  List<Route>? routes, @JsonKey(name: "status")  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleDirectionResponse() when $default != null:
return $default(_that.geocodedWaypoints,_that.routes,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "geocoded_waypoints")  List<GeocodedWaypoint>? geocodedWaypoints, @JsonKey(name: "routes")  List<Route>? routes, @JsonKey(name: "status")  String? status)  $default,) {final _that = this;
switch (_that) {
case _GoogleDirectionResponse():
return $default(_that.geocodedWaypoints,_that.routes,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "geocoded_waypoints")  List<GeocodedWaypoint>? geocodedWaypoints, @JsonKey(name: "routes")  List<Route>? routes, @JsonKey(name: "status")  String? status)?  $default,) {final _that = this;
switch (_that) {
case _GoogleDirectionResponse() when $default != null:
return $default(_that.geocodedWaypoints,_that.routes,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleDirectionResponse implements GoogleDirectionResponse {
  const _GoogleDirectionResponse({@JsonKey(name: "geocoded_waypoints") final  List<GeocodedWaypoint>? geocodedWaypoints, @JsonKey(name: "routes") final  List<Route>? routes, @JsonKey(name: "status") this.status}): _geocodedWaypoints = geocodedWaypoints,_routes = routes;
  factory _GoogleDirectionResponse.fromJson(Map<String, dynamic> json) => _$GoogleDirectionResponseFromJson(json);

 final  List<GeocodedWaypoint>? _geocodedWaypoints;
@override@JsonKey(name: "geocoded_waypoints") List<GeocodedWaypoint>? get geocodedWaypoints {
  final value = _geocodedWaypoints;
  if (value == null) return null;
  if (_geocodedWaypoints is EqualUnmodifiableListView) return _geocodedWaypoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Route>? _routes;
@override@JsonKey(name: "routes") List<Route>? get routes {
  final value = _routes;
  if (value == null) return null;
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "status") final  String? status;

/// Create a copy of GoogleDirectionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleDirectionResponseCopyWith<_GoogleDirectionResponse> get copyWith => __$GoogleDirectionResponseCopyWithImpl<_GoogleDirectionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleDirectionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleDirectionResponse&&const DeepCollectionEquality().equals(other._geocodedWaypoints, _geocodedWaypoints)&&const DeepCollectionEquality().equals(other._routes, _routes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_geocodedWaypoints),const DeepCollectionEquality().hash(_routes),status);

@override
String toString() {
  return 'GoogleDirectionResponse(geocodedWaypoints: $geocodedWaypoints, routes: $routes, status: $status)';
}


}

/// @nodoc
abstract mixin class _$GoogleDirectionResponseCopyWith<$Res> implements $GoogleDirectionResponseCopyWith<$Res> {
  factory _$GoogleDirectionResponseCopyWith(_GoogleDirectionResponse value, $Res Function(_GoogleDirectionResponse) _then) = __$GoogleDirectionResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "geocoded_waypoints") List<GeocodedWaypoint>? geocodedWaypoints,@JsonKey(name: "routes") List<Route>? routes,@JsonKey(name: "status") String? status
});




}
/// @nodoc
class __$GoogleDirectionResponseCopyWithImpl<$Res>
    implements _$GoogleDirectionResponseCopyWith<$Res> {
  __$GoogleDirectionResponseCopyWithImpl(this._self, this._then);

  final _GoogleDirectionResponse _self;
  final $Res Function(_GoogleDirectionResponse) _then;

/// Create a copy of GoogleDirectionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? geocodedWaypoints = freezed,Object? routes = freezed,Object? status = freezed,}) {
  return _then(_GoogleDirectionResponse(
geocodedWaypoints: freezed == geocodedWaypoints ? _self._geocodedWaypoints : geocodedWaypoints // ignore: cast_nullable_to_non_nullable
as List<GeocodedWaypoint>?,routes: freezed == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<Route>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GeocodedWaypoint {

@JsonKey(name: "geocoder_status") String? get geocoderStatus;@JsonKey(name: "place_id") String? get placeId;@JsonKey(name: "types") List<String>? get types;
/// Create a copy of GeocodedWaypoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeocodedWaypointCopyWith<GeocodedWaypoint> get copyWith => _$GeocodedWaypointCopyWithImpl<GeocodedWaypoint>(this as GeocodedWaypoint, _$identity);

  /// Serializes this GeocodedWaypoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeocodedWaypoint&&(identical(other.geocoderStatus, geocoderStatus) || other.geocoderStatus == geocoderStatus)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,geocoderStatus,placeId,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'GeocodedWaypoint(geocoderStatus: $geocoderStatus, placeId: $placeId, types: $types)';
}


}

/// @nodoc
abstract mixin class $GeocodedWaypointCopyWith<$Res>  {
  factory $GeocodedWaypointCopyWith(GeocodedWaypoint value, $Res Function(GeocodedWaypoint) _then) = _$GeocodedWaypointCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "geocoder_status") String? geocoderStatus,@JsonKey(name: "place_id") String? placeId,@JsonKey(name: "types") List<String>? types
});




}
/// @nodoc
class _$GeocodedWaypointCopyWithImpl<$Res>
    implements $GeocodedWaypointCopyWith<$Res> {
  _$GeocodedWaypointCopyWithImpl(this._self, this._then);

  final GeocodedWaypoint _self;
  final $Res Function(GeocodedWaypoint) _then;

/// Create a copy of GeocodedWaypoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? geocoderStatus = freezed,Object? placeId = freezed,Object? types = freezed,}) {
  return _then(_self.copyWith(
geocoderStatus: freezed == geocoderStatus ? _self.geocoderStatus : geocoderStatus // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeocodedWaypoint].
extension GeocodedWaypointPatterns on GeocodedWaypoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeocodedWaypoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeocodedWaypoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeocodedWaypoint value)  $default,){
final _that = this;
switch (_that) {
case _GeocodedWaypoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeocodedWaypoint value)?  $default,){
final _that = this;
switch (_that) {
case _GeocodedWaypoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "geocoder_status")  String? geocoderStatus, @JsonKey(name: "place_id")  String? placeId, @JsonKey(name: "types")  List<String>? types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeocodedWaypoint() when $default != null:
return $default(_that.geocoderStatus,_that.placeId,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "geocoder_status")  String? geocoderStatus, @JsonKey(name: "place_id")  String? placeId, @JsonKey(name: "types")  List<String>? types)  $default,) {final _that = this;
switch (_that) {
case _GeocodedWaypoint():
return $default(_that.geocoderStatus,_that.placeId,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "geocoder_status")  String? geocoderStatus, @JsonKey(name: "place_id")  String? placeId, @JsonKey(name: "types")  List<String>? types)?  $default,) {final _that = this;
switch (_that) {
case _GeocodedWaypoint() when $default != null:
return $default(_that.geocoderStatus,_that.placeId,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeocodedWaypoint implements GeocodedWaypoint {
  const _GeocodedWaypoint({@JsonKey(name: "geocoder_status") this.geocoderStatus, @JsonKey(name: "place_id") this.placeId, @JsonKey(name: "types") final  List<String>? types}): _types = types;
  factory _GeocodedWaypoint.fromJson(Map<String, dynamic> json) => _$GeocodedWaypointFromJson(json);

@override@JsonKey(name: "geocoder_status") final  String? geocoderStatus;
@override@JsonKey(name: "place_id") final  String? placeId;
 final  List<String>? _types;
@override@JsonKey(name: "types") List<String>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GeocodedWaypoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeocodedWaypointCopyWith<_GeocodedWaypoint> get copyWith => __$GeocodedWaypointCopyWithImpl<_GeocodedWaypoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeocodedWaypointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeocodedWaypoint&&(identical(other.geocoderStatus, geocoderStatus) || other.geocoderStatus == geocoderStatus)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,geocoderStatus,placeId,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'GeocodedWaypoint(geocoderStatus: $geocoderStatus, placeId: $placeId, types: $types)';
}


}

/// @nodoc
abstract mixin class _$GeocodedWaypointCopyWith<$Res> implements $GeocodedWaypointCopyWith<$Res> {
  factory _$GeocodedWaypointCopyWith(_GeocodedWaypoint value, $Res Function(_GeocodedWaypoint) _then) = __$GeocodedWaypointCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "geocoder_status") String? geocoderStatus,@JsonKey(name: "place_id") String? placeId,@JsonKey(name: "types") List<String>? types
});




}
/// @nodoc
class __$GeocodedWaypointCopyWithImpl<$Res>
    implements _$GeocodedWaypointCopyWith<$Res> {
  __$GeocodedWaypointCopyWithImpl(this._self, this._then);

  final _GeocodedWaypoint _self;
  final $Res Function(_GeocodedWaypoint) _then;

/// Create a copy of GeocodedWaypoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? geocoderStatus = freezed,Object? placeId = freezed,Object? types = freezed,}) {
  return _then(_GeocodedWaypoint(
geocoderStatus: freezed == geocoderStatus ? _self.geocoderStatus : geocoderStatus // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$Route {

@JsonKey(name: "bounds") Bounds? get bounds;@JsonKey(name: "copyrights") String? get copyrights;@JsonKey(name: "legs") List<Leg>? get legs;@JsonKey(name: "overview_polyline") Polyline? get overviewPolyline;@JsonKey(name: "summary") String? get summary;@JsonKey(name: "warnings") List<dynamic>? get warnings;@JsonKey(name: "waypoint_order") List<dynamic>? get waypointOrder;
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteCopyWith<Route> get copyWith => _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Route&&(identical(other.bounds, bounds) || other.bounds == bounds)&&(identical(other.copyrights, copyrights) || other.copyrights == copyrights)&&const DeepCollectionEquality().equals(other.legs, legs)&&(identical(other.overviewPolyline, overviewPolyline) || other.overviewPolyline == overviewPolyline)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.warnings, warnings)&&const DeepCollectionEquality().equals(other.waypointOrder, waypointOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bounds,copyrights,const DeepCollectionEquality().hash(legs),overviewPolyline,summary,const DeepCollectionEquality().hash(warnings),const DeepCollectionEquality().hash(waypointOrder));

@override
String toString() {
  return 'Route(bounds: $bounds, copyrights: $copyrights, legs: $legs, overviewPolyline: $overviewPolyline, summary: $summary, warnings: $warnings, waypointOrder: $waypointOrder)';
}


}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res>  {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) = _$RouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "bounds") Bounds? bounds,@JsonKey(name: "copyrights") String? copyrights,@JsonKey(name: "legs") List<Leg>? legs,@JsonKey(name: "overview_polyline") Polyline? overviewPolyline,@JsonKey(name: "summary") String? summary,@JsonKey(name: "warnings") List<dynamic>? warnings,@JsonKey(name: "waypoint_order") List<dynamic>? waypointOrder
});


$BoundsCopyWith<$Res>? get bounds;$PolylineCopyWith<$Res>? get overviewPolyline;

}
/// @nodoc
class _$RouteCopyWithImpl<$Res>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bounds = freezed,Object? copyrights = freezed,Object? legs = freezed,Object? overviewPolyline = freezed,Object? summary = freezed,Object? warnings = freezed,Object? waypointOrder = freezed,}) {
  return _then(_self.copyWith(
bounds: freezed == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as Bounds?,copyrights: freezed == copyrights ? _self.copyrights : copyrights // ignore: cast_nullable_to_non_nullable
as String?,legs: freezed == legs ? _self.legs : legs // ignore: cast_nullable_to_non_nullable
as List<Leg>?,overviewPolyline: freezed == overviewPolyline ? _self.overviewPolyline : overviewPolyline // ignore: cast_nullable_to_non_nullable
as Polyline?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,warnings: freezed == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,waypointOrder: freezed == waypointOrder ? _self.waypointOrder : waypointOrder // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoundsCopyWith<$Res>? get bounds {
    if (_self.bounds == null) {
    return null;
  }

  return $BoundsCopyWith<$Res>(_self.bounds!, (value) {
    return _then(_self.copyWith(bounds: value));
  });
}/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolylineCopyWith<$Res>? get overviewPolyline {
    if (_self.overviewPolyline == null) {
    return null;
  }

  return $PolylineCopyWith<$Res>(_self.overviewPolyline!, (value) {
    return _then(_self.copyWith(overviewPolyline: value));
  });
}
}


/// Adds pattern-matching-related methods to [Route].
extension RoutePatterns on Route {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Route value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Route() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Route value)  $default,){
final _that = this;
switch (_that) {
case _Route():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Route value)?  $default,){
final _that = this;
switch (_that) {
case _Route() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "bounds")  Bounds? bounds, @JsonKey(name: "copyrights")  String? copyrights, @JsonKey(name: "legs")  List<Leg>? legs, @JsonKey(name: "overview_polyline")  Polyline? overviewPolyline, @JsonKey(name: "summary")  String? summary, @JsonKey(name: "warnings")  List<dynamic>? warnings, @JsonKey(name: "waypoint_order")  List<dynamic>? waypointOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Route() when $default != null:
return $default(_that.bounds,_that.copyrights,_that.legs,_that.overviewPolyline,_that.summary,_that.warnings,_that.waypointOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "bounds")  Bounds? bounds, @JsonKey(name: "copyrights")  String? copyrights, @JsonKey(name: "legs")  List<Leg>? legs, @JsonKey(name: "overview_polyline")  Polyline? overviewPolyline, @JsonKey(name: "summary")  String? summary, @JsonKey(name: "warnings")  List<dynamic>? warnings, @JsonKey(name: "waypoint_order")  List<dynamic>? waypointOrder)  $default,) {final _that = this;
switch (_that) {
case _Route():
return $default(_that.bounds,_that.copyrights,_that.legs,_that.overviewPolyline,_that.summary,_that.warnings,_that.waypointOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "bounds")  Bounds? bounds, @JsonKey(name: "copyrights")  String? copyrights, @JsonKey(name: "legs")  List<Leg>? legs, @JsonKey(name: "overview_polyline")  Polyline? overviewPolyline, @JsonKey(name: "summary")  String? summary, @JsonKey(name: "warnings")  List<dynamic>? warnings, @JsonKey(name: "waypoint_order")  List<dynamic>? waypointOrder)?  $default,) {final _that = this;
switch (_that) {
case _Route() when $default != null:
return $default(_that.bounds,_that.copyrights,_that.legs,_that.overviewPolyline,_that.summary,_that.warnings,_that.waypointOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Route implements Route {
  const _Route({@JsonKey(name: "bounds") this.bounds, @JsonKey(name: "copyrights") this.copyrights, @JsonKey(name: "legs") final  List<Leg>? legs, @JsonKey(name: "overview_polyline") this.overviewPolyline, @JsonKey(name: "summary") this.summary, @JsonKey(name: "warnings") final  List<dynamic>? warnings, @JsonKey(name: "waypoint_order") final  List<dynamic>? waypointOrder}): _legs = legs,_warnings = warnings,_waypointOrder = waypointOrder;
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

@override@JsonKey(name: "bounds") final  Bounds? bounds;
@override@JsonKey(name: "copyrights") final  String? copyrights;
 final  List<Leg>? _legs;
@override@JsonKey(name: "legs") List<Leg>? get legs {
  final value = _legs;
  if (value == null) return null;
  if (_legs is EqualUnmodifiableListView) return _legs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "overview_polyline") final  Polyline? overviewPolyline;
@override@JsonKey(name: "summary") final  String? summary;
 final  List<dynamic>? _warnings;
@override@JsonKey(name: "warnings") List<dynamic>? get warnings {
  final value = _warnings;
  if (value == null) return null;
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _waypointOrder;
@override@JsonKey(name: "waypoint_order") List<dynamic>? get waypointOrder {
  final value = _waypointOrder;
  if (value == null) return null;
  if (_waypointOrder is EqualUnmodifiableListView) return _waypointOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteCopyWith<_Route> get copyWith => __$RouteCopyWithImpl<_Route>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Route&&(identical(other.bounds, bounds) || other.bounds == bounds)&&(identical(other.copyrights, copyrights) || other.copyrights == copyrights)&&const DeepCollectionEquality().equals(other._legs, _legs)&&(identical(other.overviewPolyline, overviewPolyline) || other.overviewPolyline == overviewPolyline)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._warnings, _warnings)&&const DeepCollectionEquality().equals(other._waypointOrder, _waypointOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bounds,copyrights,const DeepCollectionEquality().hash(_legs),overviewPolyline,summary,const DeepCollectionEquality().hash(_warnings),const DeepCollectionEquality().hash(_waypointOrder));

@override
String toString() {
  return 'Route(bounds: $bounds, copyrights: $copyrights, legs: $legs, overviewPolyline: $overviewPolyline, summary: $summary, warnings: $warnings, waypointOrder: $waypointOrder)';
}


}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) = __$RouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "bounds") Bounds? bounds,@JsonKey(name: "copyrights") String? copyrights,@JsonKey(name: "legs") List<Leg>? legs,@JsonKey(name: "overview_polyline") Polyline? overviewPolyline,@JsonKey(name: "summary") String? summary,@JsonKey(name: "warnings") List<dynamic>? warnings,@JsonKey(name: "waypoint_order") List<dynamic>? waypointOrder
});


@override $BoundsCopyWith<$Res>? get bounds;@override $PolylineCopyWith<$Res>? get overviewPolyline;

}
/// @nodoc
class __$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bounds = freezed,Object? copyrights = freezed,Object? legs = freezed,Object? overviewPolyline = freezed,Object? summary = freezed,Object? warnings = freezed,Object? waypointOrder = freezed,}) {
  return _then(_Route(
bounds: freezed == bounds ? _self.bounds : bounds // ignore: cast_nullable_to_non_nullable
as Bounds?,copyrights: freezed == copyrights ? _self.copyrights : copyrights // ignore: cast_nullable_to_non_nullable
as String?,legs: freezed == legs ? _self._legs : legs // ignore: cast_nullable_to_non_nullable
as List<Leg>?,overviewPolyline: freezed == overviewPolyline ? _self.overviewPolyline : overviewPolyline // ignore: cast_nullable_to_non_nullable
as Polyline?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,warnings: freezed == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,waypointOrder: freezed == waypointOrder ? _self._waypointOrder : waypointOrder // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BoundsCopyWith<$Res>? get bounds {
    if (_self.bounds == null) {
    return null;
  }

  return $BoundsCopyWith<$Res>(_self.bounds!, (value) {
    return _then(_self.copyWith(bounds: value));
  });
}/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolylineCopyWith<$Res>? get overviewPolyline {
    if (_self.overviewPolyline == null) {
    return null;
  }

  return $PolylineCopyWith<$Res>(_self.overviewPolyline!, (value) {
    return _then(_self.copyWith(overviewPolyline: value));
  });
}
}


/// @nodoc
mixin _$Bounds {

@JsonKey(name: "northeast") Northeast? get northeast;@JsonKey(name: "southwest") Northeast? get southwest;
/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoundsCopyWith<Bounds> get copyWith => _$BoundsCopyWithImpl<Bounds>(this as Bounds, _$identity);

  /// Serializes this Bounds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bounds&&(identical(other.northeast, northeast) || other.northeast == northeast)&&(identical(other.southwest, southwest) || other.southwest == southwest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,northeast,southwest);

@override
String toString() {
  return 'Bounds(northeast: $northeast, southwest: $southwest)';
}


}

/// @nodoc
abstract mixin class $BoundsCopyWith<$Res>  {
  factory $BoundsCopyWith(Bounds value, $Res Function(Bounds) _then) = _$BoundsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "northeast") Northeast? northeast,@JsonKey(name: "southwest") Northeast? southwest
});


$NortheastCopyWith<$Res>? get northeast;$NortheastCopyWith<$Res>? get southwest;

}
/// @nodoc
class _$BoundsCopyWithImpl<$Res>
    implements $BoundsCopyWith<$Res> {
  _$BoundsCopyWithImpl(this._self, this._then);

  final Bounds _self;
  final $Res Function(Bounds) _then;

/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? northeast = freezed,Object? southwest = freezed,}) {
  return _then(_self.copyWith(
northeast: freezed == northeast ? _self.northeast : northeast // ignore: cast_nullable_to_non_nullable
as Northeast?,southwest: freezed == southwest ? _self.southwest : southwest // ignore: cast_nullable_to_non_nullable
as Northeast?,
  ));
}
/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get northeast {
    if (_self.northeast == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.northeast!, (value) {
    return _then(_self.copyWith(northeast: value));
  });
}/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get southwest {
    if (_self.southwest == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.southwest!, (value) {
    return _then(_self.copyWith(southwest: value));
  });
}
}


/// Adds pattern-matching-related methods to [Bounds].
extension BoundsPatterns on Bounds {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bounds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bounds() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bounds value)  $default,){
final _that = this;
switch (_that) {
case _Bounds():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bounds value)?  $default,){
final _that = this;
switch (_that) {
case _Bounds() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "northeast")  Northeast? northeast, @JsonKey(name: "southwest")  Northeast? southwest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bounds() when $default != null:
return $default(_that.northeast,_that.southwest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "northeast")  Northeast? northeast, @JsonKey(name: "southwest")  Northeast? southwest)  $default,) {final _that = this;
switch (_that) {
case _Bounds():
return $default(_that.northeast,_that.southwest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "northeast")  Northeast? northeast, @JsonKey(name: "southwest")  Northeast? southwest)?  $default,) {final _that = this;
switch (_that) {
case _Bounds() when $default != null:
return $default(_that.northeast,_that.southwest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bounds implements Bounds {
  const _Bounds({@JsonKey(name: "northeast") this.northeast, @JsonKey(name: "southwest") this.southwest});
  factory _Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);

@override@JsonKey(name: "northeast") final  Northeast? northeast;
@override@JsonKey(name: "southwest") final  Northeast? southwest;

/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoundsCopyWith<_Bounds> get copyWith => __$BoundsCopyWithImpl<_Bounds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bounds&&(identical(other.northeast, northeast) || other.northeast == northeast)&&(identical(other.southwest, southwest) || other.southwest == southwest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,northeast,southwest);

@override
String toString() {
  return 'Bounds(northeast: $northeast, southwest: $southwest)';
}


}

/// @nodoc
abstract mixin class _$BoundsCopyWith<$Res> implements $BoundsCopyWith<$Res> {
  factory _$BoundsCopyWith(_Bounds value, $Res Function(_Bounds) _then) = __$BoundsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "northeast") Northeast? northeast,@JsonKey(name: "southwest") Northeast? southwest
});


@override $NortheastCopyWith<$Res>? get northeast;@override $NortheastCopyWith<$Res>? get southwest;

}
/// @nodoc
class __$BoundsCopyWithImpl<$Res>
    implements _$BoundsCopyWith<$Res> {
  __$BoundsCopyWithImpl(this._self, this._then);

  final _Bounds _self;
  final $Res Function(_Bounds) _then;

/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? northeast = freezed,Object? southwest = freezed,}) {
  return _then(_Bounds(
northeast: freezed == northeast ? _self.northeast : northeast // ignore: cast_nullable_to_non_nullable
as Northeast?,southwest: freezed == southwest ? _self.southwest : southwest // ignore: cast_nullable_to_non_nullable
as Northeast?,
  ));
}

/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get northeast {
    if (_self.northeast == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.northeast!, (value) {
    return _then(_self.copyWith(northeast: value));
  });
}/// Create a copy of Bounds
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get southwest {
    if (_self.southwest == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.southwest!, (value) {
    return _then(_self.copyWith(southwest: value));
  });
}
}


/// @nodoc
mixin _$Northeast {

@JsonKey(name: "lat") double? get lat;@JsonKey(name: "lng") double? get lng;
/// Create a copy of Northeast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NortheastCopyWith<Northeast> get copyWith => _$NortheastCopyWithImpl<Northeast>(this as Northeast, _$identity);

  /// Serializes this Northeast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Northeast&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Northeast(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $NortheastCopyWith<$Res>  {
  factory $NortheastCopyWith(Northeast value, $Res Function(Northeast) _then) = _$NortheastCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class _$NortheastCopyWithImpl<$Res>
    implements $NortheastCopyWith<$Res> {
  _$NortheastCopyWithImpl(this._self, this._then);

  final Northeast _self;
  final $Res Function(Northeast) _then;

/// Create a copy of Northeast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Northeast].
extension NortheastPatterns on Northeast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Northeast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Northeast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Northeast value)  $default,){
final _that = this;
switch (_that) {
case _Northeast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Northeast value)?  $default,){
final _that = this;
switch (_that) {
case _Northeast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double? lat, @JsonKey(name: "lng")  double? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Northeast() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double? lat, @JsonKey(name: "lng")  double? lng)  $default,) {final _that = this;
switch (_that) {
case _Northeast():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "lat")  double? lat, @JsonKey(name: "lng")  double? lng)?  $default,) {final _that = this;
switch (_that) {
case _Northeast() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Northeast implements Northeast {
  const _Northeast({@JsonKey(name: "lat") this.lat, @JsonKey(name: "lng") this.lng});
  factory _Northeast.fromJson(Map<String, dynamic> json) => _$NortheastFromJson(json);

@override@JsonKey(name: "lat") final  double? lat;
@override@JsonKey(name: "lng") final  double? lng;

/// Create a copy of Northeast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NortheastCopyWith<_Northeast> get copyWith => __$NortheastCopyWithImpl<_Northeast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NortheastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Northeast&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Northeast(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$NortheastCopyWith<$Res> implements $NortheastCopyWith<$Res> {
  factory _$NortheastCopyWith(_Northeast value, $Res Function(_Northeast) _then) = __$NortheastCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lat") double? lat,@JsonKey(name: "lng") double? lng
});




}
/// @nodoc
class __$NortheastCopyWithImpl<$Res>
    implements _$NortheastCopyWith<$Res> {
  __$NortheastCopyWithImpl(this._self, this._then);

  final _Northeast _self;
  final $Res Function(_Northeast) _then;

/// Create a copy of Northeast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_Northeast(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Leg {

@JsonKey(name: "distance") Distance? get distance;@JsonKey(name: "duration") Distance? get duration;@JsonKey(name: "end_address") String? get endAddress;@JsonKey(name: "end_location") Northeast? get endLocation;@JsonKey(name: "start_address") String? get startAddress;@JsonKey(name: "start_location") Northeast? get startLocation;@JsonKey(name: "steps") List<Step>? get steps;@JsonKey(name: "traffic_speed_entry") List<dynamic>? get trafficSpeedEntry;@JsonKey(name: "via_waypoint") List<dynamic>? get viaWaypoint;
/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegCopyWith<Leg> get copyWith => _$LegCopyWithImpl<Leg>(this as Leg, _$identity);

  /// Serializes this Leg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Leg&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.endAddress, endAddress) || other.endAddress == endAddress)&&(identical(other.endLocation, endLocation) || other.endLocation == endLocation)&&(identical(other.startAddress, startAddress) || other.startAddress == startAddress)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&const DeepCollectionEquality().equals(other.steps, steps)&&const DeepCollectionEquality().equals(other.trafficSpeedEntry, trafficSpeedEntry)&&const DeepCollectionEquality().equals(other.viaWaypoint, viaWaypoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distance,duration,endAddress,endLocation,startAddress,startLocation,const DeepCollectionEquality().hash(steps),const DeepCollectionEquality().hash(trafficSpeedEntry),const DeepCollectionEquality().hash(viaWaypoint));

@override
String toString() {
  return 'Leg(distance: $distance, duration: $duration, endAddress: $endAddress, endLocation: $endLocation, startAddress: $startAddress, startLocation: $startLocation, steps: $steps, trafficSpeedEntry: $trafficSpeedEntry, viaWaypoint: $viaWaypoint)';
}


}

/// @nodoc
abstract mixin class $LegCopyWith<$Res>  {
  factory $LegCopyWith(Leg value, $Res Function(Leg) _then) = _$LegCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "distance") Distance? distance,@JsonKey(name: "duration") Distance? duration,@JsonKey(name: "end_address") String? endAddress,@JsonKey(name: "end_location") Northeast? endLocation,@JsonKey(name: "start_address") String? startAddress,@JsonKey(name: "start_location") Northeast? startLocation,@JsonKey(name: "steps") List<Step>? steps,@JsonKey(name: "traffic_speed_entry") List<dynamic>? trafficSpeedEntry,@JsonKey(name: "via_waypoint") List<dynamic>? viaWaypoint
});


$DistanceCopyWith<$Res>? get distance;$DistanceCopyWith<$Res>? get duration;$NortheastCopyWith<$Res>? get endLocation;$NortheastCopyWith<$Res>? get startLocation;

}
/// @nodoc
class _$LegCopyWithImpl<$Res>
    implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._self, this._then);

  final Leg _self;
  final $Res Function(Leg) _then;

/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distance = freezed,Object? duration = freezed,Object? endAddress = freezed,Object? endLocation = freezed,Object? startAddress = freezed,Object? startLocation = freezed,Object? steps = freezed,Object? trafficSpeedEntry = freezed,Object? viaWaypoint = freezed,}) {
  return _then(_self.copyWith(
distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as Distance?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Distance?,endAddress: freezed == endAddress ? _self.endAddress : endAddress // ignore: cast_nullable_to_non_nullable
as String?,endLocation: freezed == endLocation ? _self.endLocation : endLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,startAddress: freezed == startAddress ? _self.startAddress : startAddress // ignore: cast_nullable_to_non_nullable
as String?,startLocation: freezed == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,steps: freezed == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<Step>?,trafficSpeedEntry: freezed == trafficSpeedEntry ? _self.trafficSpeedEntry : trafficSpeedEntry // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,viaWaypoint: freezed == viaWaypoint ? _self.viaWaypoint : viaWaypoint // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get distance {
    if (_self.distance == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.distance!, (value) {
    return _then(_self.copyWith(distance: value));
  });
}/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get duration {
    if (_self.duration == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.duration!, (value) {
    return _then(_self.copyWith(duration: value));
  });
}/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get endLocation {
    if (_self.endLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.endLocation!, (value) {
    return _then(_self.copyWith(endLocation: value));
  });
}/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get startLocation {
    if (_self.startLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.startLocation!, (value) {
    return _then(_self.copyWith(startLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Leg].
extension LegPatterns on Leg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Leg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Leg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Leg value)  $default,){
final _that = this;
switch (_that) {
case _Leg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Leg value)?  $default,){
final _that = this;
switch (_that) {
case _Leg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "distance")  Distance? distance, @JsonKey(name: "duration")  Distance? duration, @JsonKey(name: "end_address")  String? endAddress, @JsonKey(name: "end_location")  Northeast? endLocation, @JsonKey(name: "start_address")  String? startAddress, @JsonKey(name: "start_location")  Northeast? startLocation, @JsonKey(name: "steps")  List<Step>? steps, @JsonKey(name: "traffic_speed_entry")  List<dynamic>? trafficSpeedEntry, @JsonKey(name: "via_waypoint")  List<dynamic>? viaWaypoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Leg() when $default != null:
return $default(_that.distance,_that.duration,_that.endAddress,_that.endLocation,_that.startAddress,_that.startLocation,_that.steps,_that.trafficSpeedEntry,_that.viaWaypoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "distance")  Distance? distance, @JsonKey(name: "duration")  Distance? duration, @JsonKey(name: "end_address")  String? endAddress, @JsonKey(name: "end_location")  Northeast? endLocation, @JsonKey(name: "start_address")  String? startAddress, @JsonKey(name: "start_location")  Northeast? startLocation, @JsonKey(name: "steps")  List<Step>? steps, @JsonKey(name: "traffic_speed_entry")  List<dynamic>? trafficSpeedEntry, @JsonKey(name: "via_waypoint")  List<dynamic>? viaWaypoint)  $default,) {final _that = this;
switch (_that) {
case _Leg():
return $default(_that.distance,_that.duration,_that.endAddress,_that.endLocation,_that.startAddress,_that.startLocation,_that.steps,_that.trafficSpeedEntry,_that.viaWaypoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "distance")  Distance? distance, @JsonKey(name: "duration")  Distance? duration, @JsonKey(name: "end_address")  String? endAddress, @JsonKey(name: "end_location")  Northeast? endLocation, @JsonKey(name: "start_address")  String? startAddress, @JsonKey(name: "start_location")  Northeast? startLocation, @JsonKey(name: "steps")  List<Step>? steps, @JsonKey(name: "traffic_speed_entry")  List<dynamic>? trafficSpeedEntry, @JsonKey(name: "via_waypoint")  List<dynamic>? viaWaypoint)?  $default,) {final _that = this;
switch (_that) {
case _Leg() when $default != null:
return $default(_that.distance,_that.duration,_that.endAddress,_that.endLocation,_that.startAddress,_that.startLocation,_that.steps,_that.trafficSpeedEntry,_that.viaWaypoint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Leg implements Leg {
  const _Leg({@JsonKey(name: "distance") this.distance, @JsonKey(name: "duration") this.duration, @JsonKey(name: "end_address") this.endAddress, @JsonKey(name: "end_location") this.endLocation, @JsonKey(name: "start_address") this.startAddress, @JsonKey(name: "start_location") this.startLocation, @JsonKey(name: "steps") final  List<Step>? steps, @JsonKey(name: "traffic_speed_entry") final  List<dynamic>? trafficSpeedEntry, @JsonKey(name: "via_waypoint") final  List<dynamic>? viaWaypoint}): _steps = steps,_trafficSpeedEntry = trafficSpeedEntry,_viaWaypoint = viaWaypoint;
  factory _Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);

@override@JsonKey(name: "distance") final  Distance? distance;
@override@JsonKey(name: "duration") final  Distance? duration;
@override@JsonKey(name: "end_address") final  String? endAddress;
@override@JsonKey(name: "end_location") final  Northeast? endLocation;
@override@JsonKey(name: "start_address") final  String? startAddress;
@override@JsonKey(name: "start_location") final  Northeast? startLocation;
 final  List<Step>? _steps;
@override@JsonKey(name: "steps") List<Step>? get steps {
  final value = _steps;
  if (value == null) return null;
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _trafficSpeedEntry;
@override@JsonKey(name: "traffic_speed_entry") List<dynamic>? get trafficSpeedEntry {
  final value = _trafficSpeedEntry;
  if (value == null) return null;
  if (_trafficSpeedEntry is EqualUnmodifiableListView) return _trafficSpeedEntry;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _viaWaypoint;
@override@JsonKey(name: "via_waypoint") List<dynamic>? get viaWaypoint {
  final value = _viaWaypoint;
  if (value == null) return null;
  if (_viaWaypoint is EqualUnmodifiableListView) return _viaWaypoint;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegCopyWith<_Leg> get copyWith => __$LegCopyWithImpl<_Leg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Leg&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.endAddress, endAddress) || other.endAddress == endAddress)&&(identical(other.endLocation, endLocation) || other.endLocation == endLocation)&&(identical(other.startAddress, startAddress) || other.startAddress == startAddress)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&const DeepCollectionEquality().equals(other._steps, _steps)&&const DeepCollectionEquality().equals(other._trafficSpeedEntry, _trafficSpeedEntry)&&const DeepCollectionEquality().equals(other._viaWaypoint, _viaWaypoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distance,duration,endAddress,endLocation,startAddress,startLocation,const DeepCollectionEquality().hash(_steps),const DeepCollectionEquality().hash(_trafficSpeedEntry),const DeepCollectionEquality().hash(_viaWaypoint));

@override
String toString() {
  return 'Leg(distance: $distance, duration: $duration, endAddress: $endAddress, endLocation: $endLocation, startAddress: $startAddress, startLocation: $startLocation, steps: $steps, trafficSpeedEntry: $trafficSpeedEntry, viaWaypoint: $viaWaypoint)';
}


}

/// @nodoc
abstract mixin class _$LegCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$LegCopyWith(_Leg value, $Res Function(_Leg) _then) = __$LegCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "distance") Distance? distance,@JsonKey(name: "duration") Distance? duration,@JsonKey(name: "end_address") String? endAddress,@JsonKey(name: "end_location") Northeast? endLocation,@JsonKey(name: "start_address") String? startAddress,@JsonKey(name: "start_location") Northeast? startLocation,@JsonKey(name: "steps") List<Step>? steps,@JsonKey(name: "traffic_speed_entry") List<dynamic>? trafficSpeedEntry,@JsonKey(name: "via_waypoint") List<dynamic>? viaWaypoint
});


@override $DistanceCopyWith<$Res>? get distance;@override $DistanceCopyWith<$Res>? get duration;@override $NortheastCopyWith<$Res>? get endLocation;@override $NortheastCopyWith<$Res>? get startLocation;

}
/// @nodoc
class __$LegCopyWithImpl<$Res>
    implements _$LegCopyWith<$Res> {
  __$LegCopyWithImpl(this._self, this._then);

  final _Leg _self;
  final $Res Function(_Leg) _then;

/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distance = freezed,Object? duration = freezed,Object? endAddress = freezed,Object? endLocation = freezed,Object? startAddress = freezed,Object? startLocation = freezed,Object? steps = freezed,Object? trafficSpeedEntry = freezed,Object? viaWaypoint = freezed,}) {
  return _then(_Leg(
distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as Distance?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Distance?,endAddress: freezed == endAddress ? _self.endAddress : endAddress // ignore: cast_nullable_to_non_nullable
as String?,endLocation: freezed == endLocation ? _self.endLocation : endLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,startAddress: freezed == startAddress ? _self.startAddress : startAddress // ignore: cast_nullable_to_non_nullable
as String?,startLocation: freezed == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,steps: freezed == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<Step>?,trafficSpeedEntry: freezed == trafficSpeedEntry ? _self._trafficSpeedEntry : trafficSpeedEntry // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,viaWaypoint: freezed == viaWaypoint ? _self._viaWaypoint : viaWaypoint // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get distance {
    if (_self.distance == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.distance!, (value) {
    return _then(_self.copyWith(distance: value));
  });
}/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get duration {
    if (_self.duration == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.duration!, (value) {
    return _then(_self.copyWith(duration: value));
  });
}/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get endLocation {
    if (_self.endLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.endLocation!, (value) {
    return _then(_self.copyWith(endLocation: value));
  });
}/// Create a copy of Leg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get startLocation {
    if (_self.startLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.startLocation!, (value) {
    return _then(_self.copyWith(startLocation: value));
  });
}
}


/// @nodoc
mixin _$Distance {

@JsonKey(name: "text") String? get text;@JsonKey(name: "value") int? get value;
/// Create a copy of Distance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistanceCopyWith<Distance> get copyWith => _$DistanceCopyWithImpl<Distance>(this as Distance, _$identity);

  /// Serializes this Distance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Distance&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,value);

@override
String toString() {
  return 'Distance(text: $text, value: $value)';
}


}

/// @nodoc
abstract mixin class $DistanceCopyWith<$Res>  {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) _then) = _$DistanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "text") String? text,@JsonKey(name: "value") int? value
});




}
/// @nodoc
class _$DistanceCopyWithImpl<$Res>
    implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._self, this._then);

  final Distance _self;
  final $Res Function(Distance) _then;

/// Create a copy of Distance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Distance].
extension DistancePatterns on Distance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Distance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Distance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Distance value)  $default,){
final _that = this;
switch (_that) {
case _Distance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Distance value)?  $default,){
final _that = this;
switch (_that) {
case _Distance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "text")  String? text, @JsonKey(name: "value")  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Distance() when $default != null:
return $default(_that.text,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "text")  String? text, @JsonKey(name: "value")  int? value)  $default,) {final _that = this;
switch (_that) {
case _Distance():
return $default(_that.text,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "text")  String? text, @JsonKey(name: "value")  int? value)?  $default,) {final _that = this;
switch (_that) {
case _Distance() when $default != null:
return $default(_that.text,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Distance implements Distance {
  const _Distance({@JsonKey(name: "text") this.text, @JsonKey(name: "value") this.value});
  factory _Distance.fromJson(Map<String, dynamic> json) => _$DistanceFromJson(json);

@override@JsonKey(name: "text") final  String? text;
@override@JsonKey(name: "value") final  int? value;

/// Create a copy of Distance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistanceCopyWith<_Distance> get copyWith => __$DistanceCopyWithImpl<_Distance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DistanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Distance&&(identical(other.text, text) || other.text == text)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,value);

@override
String toString() {
  return 'Distance(text: $text, value: $value)';
}


}

/// @nodoc
abstract mixin class _$DistanceCopyWith<$Res> implements $DistanceCopyWith<$Res> {
  factory _$DistanceCopyWith(_Distance value, $Res Function(_Distance) _then) = __$DistanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "text") String? text,@JsonKey(name: "value") int? value
});




}
/// @nodoc
class __$DistanceCopyWithImpl<$Res>
    implements _$DistanceCopyWith<$Res> {
  __$DistanceCopyWithImpl(this._self, this._then);

  final _Distance _self;
  final $Res Function(_Distance) _then;

/// Create a copy of Distance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? value = freezed,}) {
  return _then(_Distance(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Step {

@JsonKey(name: "distance") Distance? get distance;@JsonKey(name: "duration") Distance? get duration;@JsonKey(name: "end_location") Northeast? get endLocation;@JsonKey(name: "html_instructions") String? get htmlInstructions;@JsonKey(name: "polyline") Polyline? get polyline;@JsonKey(name: "start_location") Northeast? get startLocation;@JsonKey(name: "travel_mode") String? get travelMode;@JsonKey(name: "maneuver") String? get maneuver;
/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StepCopyWith<Step> get copyWith => _$StepCopyWithImpl<Step>(this as Step, _$identity);

  /// Serializes this Step to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Step&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.endLocation, endLocation) || other.endLocation == endLocation)&&(identical(other.htmlInstructions, htmlInstructions) || other.htmlInstructions == htmlInstructions)&&(identical(other.polyline, polyline) || other.polyline == polyline)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&(identical(other.travelMode, travelMode) || other.travelMode == travelMode)&&(identical(other.maneuver, maneuver) || other.maneuver == maneuver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distance,duration,endLocation,htmlInstructions,polyline,startLocation,travelMode,maneuver);

@override
String toString() {
  return 'Step(distance: $distance, duration: $duration, endLocation: $endLocation, htmlInstructions: $htmlInstructions, polyline: $polyline, startLocation: $startLocation, travelMode: $travelMode, maneuver: $maneuver)';
}


}

/// @nodoc
abstract mixin class $StepCopyWith<$Res>  {
  factory $StepCopyWith(Step value, $Res Function(Step) _then) = _$StepCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "distance") Distance? distance,@JsonKey(name: "duration") Distance? duration,@JsonKey(name: "end_location") Northeast? endLocation,@JsonKey(name: "html_instructions") String? htmlInstructions,@JsonKey(name: "polyline") Polyline? polyline,@JsonKey(name: "start_location") Northeast? startLocation,@JsonKey(name: "travel_mode") String? travelMode,@JsonKey(name: "maneuver") String? maneuver
});


$DistanceCopyWith<$Res>? get distance;$DistanceCopyWith<$Res>? get duration;$NortheastCopyWith<$Res>? get endLocation;$PolylineCopyWith<$Res>? get polyline;$NortheastCopyWith<$Res>? get startLocation;

}
/// @nodoc
class _$StepCopyWithImpl<$Res>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._self, this._then);

  final Step _self;
  final $Res Function(Step) _then;

/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distance = freezed,Object? duration = freezed,Object? endLocation = freezed,Object? htmlInstructions = freezed,Object? polyline = freezed,Object? startLocation = freezed,Object? travelMode = freezed,Object? maneuver = freezed,}) {
  return _then(_self.copyWith(
distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as Distance?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Distance?,endLocation: freezed == endLocation ? _self.endLocation : endLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,htmlInstructions: freezed == htmlInstructions ? _self.htmlInstructions : htmlInstructions // ignore: cast_nullable_to_non_nullable
as String?,polyline: freezed == polyline ? _self.polyline : polyline // ignore: cast_nullable_to_non_nullable
as Polyline?,startLocation: freezed == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,travelMode: freezed == travelMode ? _self.travelMode : travelMode // ignore: cast_nullable_to_non_nullable
as String?,maneuver: freezed == maneuver ? _self.maneuver : maneuver // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get distance {
    if (_self.distance == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.distance!, (value) {
    return _then(_self.copyWith(distance: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get duration {
    if (_self.duration == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.duration!, (value) {
    return _then(_self.copyWith(duration: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get endLocation {
    if (_self.endLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.endLocation!, (value) {
    return _then(_self.copyWith(endLocation: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolylineCopyWith<$Res>? get polyline {
    if (_self.polyline == null) {
    return null;
  }

  return $PolylineCopyWith<$Res>(_self.polyline!, (value) {
    return _then(_self.copyWith(polyline: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get startLocation {
    if (_self.startLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.startLocation!, (value) {
    return _then(_self.copyWith(startLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Step].
extension StepPatterns on Step {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Step value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Step() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Step value)  $default,){
final _that = this;
switch (_that) {
case _Step():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Step value)?  $default,){
final _that = this;
switch (_that) {
case _Step() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "distance")  Distance? distance, @JsonKey(name: "duration")  Distance? duration, @JsonKey(name: "end_location")  Northeast? endLocation, @JsonKey(name: "html_instructions")  String? htmlInstructions, @JsonKey(name: "polyline")  Polyline? polyline, @JsonKey(name: "start_location")  Northeast? startLocation, @JsonKey(name: "travel_mode")  String? travelMode, @JsonKey(name: "maneuver")  String? maneuver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Step() when $default != null:
return $default(_that.distance,_that.duration,_that.endLocation,_that.htmlInstructions,_that.polyline,_that.startLocation,_that.travelMode,_that.maneuver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "distance")  Distance? distance, @JsonKey(name: "duration")  Distance? duration, @JsonKey(name: "end_location")  Northeast? endLocation, @JsonKey(name: "html_instructions")  String? htmlInstructions, @JsonKey(name: "polyline")  Polyline? polyline, @JsonKey(name: "start_location")  Northeast? startLocation, @JsonKey(name: "travel_mode")  String? travelMode, @JsonKey(name: "maneuver")  String? maneuver)  $default,) {final _that = this;
switch (_that) {
case _Step():
return $default(_that.distance,_that.duration,_that.endLocation,_that.htmlInstructions,_that.polyline,_that.startLocation,_that.travelMode,_that.maneuver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "distance")  Distance? distance, @JsonKey(name: "duration")  Distance? duration, @JsonKey(name: "end_location")  Northeast? endLocation, @JsonKey(name: "html_instructions")  String? htmlInstructions, @JsonKey(name: "polyline")  Polyline? polyline, @JsonKey(name: "start_location")  Northeast? startLocation, @JsonKey(name: "travel_mode")  String? travelMode, @JsonKey(name: "maneuver")  String? maneuver)?  $default,) {final _that = this;
switch (_that) {
case _Step() when $default != null:
return $default(_that.distance,_that.duration,_that.endLocation,_that.htmlInstructions,_that.polyline,_that.startLocation,_that.travelMode,_that.maneuver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Step implements Step {
  const _Step({@JsonKey(name: "distance") this.distance, @JsonKey(name: "duration") this.duration, @JsonKey(name: "end_location") this.endLocation, @JsonKey(name: "html_instructions") this.htmlInstructions, @JsonKey(name: "polyline") this.polyline, @JsonKey(name: "start_location") this.startLocation, @JsonKey(name: "travel_mode") this.travelMode, @JsonKey(name: "maneuver") this.maneuver});
  factory _Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

@override@JsonKey(name: "distance") final  Distance? distance;
@override@JsonKey(name: "duration") final  Distance? duration;
@override@JsonKey(name: "end_location") final  Northeast? endLocation;
@override@JsonKey(name: "html_instructions") final  String? htmlInstructions;
@override@JsonKey(name: "polyline") final  Polyline? polyline;
@override@JsonKey(name: "start_location") final  Northeast? startLocation;
@override@JsonKey(name: "travel_mode") final  String? travelMode;
@override@JsonKey(name: "maneuver") final  String? maneuver;

/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StepCopyWith<_Step> get copyWith => __$StepCopyWithImpl<_Step>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Step&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.endLocation, endLocation) || other.endLocation == endLocation)&&(identical(other.htmlInstructions, htmlInstructions) || other.htmlInstructions == htmlInstructions)&&(identical(other.polyline, polyline) || other.polyline == polyline)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&(identical(other.travelMode, travelMode) || other.travelMode == travelMode)&&(identical(other.maneuver, maneuver) || other.maneuver == maneuver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distance,duration,endLocation,htmlInstructions,polyline,startLocation,travelMode,maneuver);

@override
String toString() {
  return 'Step(distance: $distance, duration: $duration, endLocation: $endLocation, htmlInstructions: $htmlInstructions, polyline: $polyline, startLocation: $startLocation, travelMode: $travelMode, maneuver: $maneuver)';
}


}

/// @nodoc
abstract mixin class _$StepCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$StepCopyWith(_Step value, $Res Function(_Step) _then) = __$StepCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "distance") Distance? distance,@JsonKey(name: "duration") Distance? duration,@JsonKey(name: "end_location") Northeast? endLocation,@JsonKey(name: "html_instructions") String? htmlInstructions,@JsonKey(name: "polyline") Polyline? polyline,@JsonKey(name: "start_location") Northeast? startLocation,@JsonKey(name: "travel_mode") String? travelMode,@JsonKey(name: "maneuver") String? maneuver
});


@override $DistanceCopyWith<$Res>? get distance;@override $DistanceCopyWith<$Res>? get duration;@override $NortheastCopyWith<$Res>? get endLocation;@override $PolylineCopyWith<$Res>? get polyline;@override $NortheastCopyWith<$Res>? get startLocation;

}
/// @nodoc
class __$StepCopyWithImpl<$Res>
    implements _$StepCopyWith<$Res> {
  __$StepCopyWithImpl(this._self, this._then);

  final _Step _self;
  final $Res Function(_Step) _then;

/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distance = freezed,Object? duration = freezed,Object? endLocation = freezed,Object? htmlInstructions = freezed,Object? polyline = freezed,Object? startLocation = freezed,Object? travelMode = freezed,Object? maneuver = freezed,}) {
  return _then(_Step(
distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as Distance?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Distance?,endLocation: freezed == endLocation ? _self.endLocation : endLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,htmlInstructions: freezed == htmlInstructions ? _self.htmlInstructions : htmlInstructions // ignore: cast_nullable_to_non_nullable
as String?,polyline: freezed == polyline ? _self.polyline : polyline // ignore: cast_nullable_to_non_nullable
as Polyline?,startLocation: freezed == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as Northeast?,travelMode: freezed == travelMode ? _self.travelMode : travelMode // ignore: cast_nullable_to_non_nullable
as String?,maneuver: freezed == maneuver ? _self.maneuver : maneuver // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get distance {
    if (_self.distance == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.distance!, (value) {
    return _then(_self.copyWith(distance: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceCopyWith<$Res>? get duration {
    if (_self.duration == null) {
    return null;
  }

  return $DistanceCopyWith<$Res>(_self.duration!, (value) {
    return _then(_self.copyWith(duration: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get endLocation {
    if (_self.endLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.endLocation!, (value) {
    return _then(_self.copyWith(endLocation: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolylineCopyWith<$Res>? get polyline {
    if (_self.polyline == null) {
    return null;
  }

  return $PolylineCopyWith<$Res>(_self.polyline!, (value) {
    return _then(_self.copyWith(polyline: value));
  });
}/// Create a copy of Step
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NortheastCopyWith<$Res>? get startLocation {
    if (_self.startLocation == null) {
    return null;
  }

  return $NortheastCopyWith<$Res>(_self.startLocation!, (value) {
    return _then(_self.copyWith(startLocation: value));
  });
}
}


/// @nodoc
mixin _$Polyline {

@JsonKey(name: "points") String? get points;
/// Create a copy of Polyline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PolylineCopyWith<Polyline> get copyWith => _$PolylineCopyWithImpl<Polyline>(this as Polyline, _$identity);

  /// Serializes this Polyline to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Polyline&&(identical(other.points, points) || other.points == points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,points);

@override
String toString() {
  return 'Polyline(points: $points)';
}


}

/// @nodoc
abstract mixin class $PolylineCopyWith<$Res>  {
  factory $PolylineCopyWith(Polyline value, $Res Function(Polyline) _then) = _$PolylineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "points") String? points
});




}
/// @nodoc
class _$PolylineCopyWithImpl<$Res>
    implements $PolylineCopyWith<$Res> {
  _$PolylineCopyWithImpl(this._self, this._then);

  final Polyline _self;
  final $Res Function(Polyline) _then;

/// Create a copy of Polyline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = freezed,}) {
  return _then(_self.copyWith(
points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Polyline].
extension PolylinePatterns on Polyline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Polyline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Polyline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Polyline value)  $default,){
final _that = this;
switch (_that) {
case _Polyline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Polyline value)?  $default,){
final _that = this;
switch (_that) {
case _Polyline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "points")  String? points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Polyline() when $default != null:
return $default(_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "points")  String? points)  $default,) {final _that = this;
switch (_that) {
case _Polyline():
return $default(_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "points")  String? points)?  $default,) {final _that = this;
switch (_that) {
case _Polyline() when $default != null:
return $default(_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Polyline implements Polyline {
  const _Polyline({@JsonKey(name: "points") this.points});
  factory _Polyline.fromJson(Map<String, dynamic> json) => _$PolylineFromJson(json);

@override@JsonKey(name: "points") final  String? points;

/// Create a copy of Polyline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PolylineCopyWith<_Polyline> get copyWith => __$PolylineCopyWithImpl<_Polyline>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PolylineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Polyline&&(identical(other.points, points) || other.points == points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,points);

@override
String toString() {
  return 'Polyline(points: $points)';
}


}

/// @nodoc
abstract mixin class _$PolylineCopyWith<$Res> implements $PolylineCopyWith<$Res> {
  factory _$PolylineCopyWith(_Polyline value, $Res Function(_Polyline) _then) = __$PolylineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "points") String? points
});




}
/// @nodoc
class __$PolylineCopyWithImpl<$Res>
    implements _$PolylineCopyWith<$Res> {
  __$PolylineCopyWithImpl(this._self, this._then);

  final _Polyline _self;
  final $Res Function(_Polyline) _then;

/// Create a copy of Polyline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = freezed,}) {
  return _then(_Polyline(
points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
