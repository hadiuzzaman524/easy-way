// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppThemeState {

 bool get isDarkTheme; bool get isBangla; String get mapStyle;
/// Create a copy of AppThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppThemeStateCopyWith<AppThemeState> get copyWith => _$AppThemeStateCopyWithImpl<AppThemeState>(this as AppThemeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeState&&(identical(other.isDarkTheme, isDarkTheme) || other.isDarkTheme == isDarkTheme)&&(identical(other.isBangla, isBangla) || other.isBangla == isBangla)&&(identical(other.mapStyle, mapStyle) || other.mapStyle == mapStyle));
}


@override
int get hashCode => Object.hash(runtimeType,isDarkTheme,isBangla,mapStyle);

@override
String toString() {
  return 'AppThemeState(isDarkTheme: $isDarkTheme, isBangla: $isBangla, mapStyle: $mapStyle)';
}


}

/// @nodoc
abstract mixin class $AppThemeStateCopyWith<$Res>  {
  factory $AppThemeStateCopyWith(AppThemeState value, $Res Function(AppThemeState) _then) = _$AppThemeStateCopyWithImpl;
@useResult
$Res call({
 bool isDarkTheme, bool isBangla, String mapStyle
});




}
/// @nodoc
class _$AppThemeStateCopyWithImpl<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  _$AppThemeStateCopyWithImpl(this._self, this._then);

  final AppThemeState _self;
  final $Res Function(AppThemeState) _then;

/// Create a copy of AppThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDarkTheme = null,Object? isBangla = null,Object? mapStyle = null,}) {
  return _then(_self.copyWith(
isDarkTheme: null == isDarkTheme ? _self.isDarkTheme : isDarkTheme // ignore: cast_nullable_to_non_nullable
as bool,isBangla: null == isBangla ? _self.isBangla : isBangla // ignore: cast_nullable_to_non_nullable
as bool,mapStyle: null == mapStyle ? _self.mapStyle : mapStyle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppThemeState].
extension AppThemeStatePatterns on AppThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppThemeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppThemeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppThemeState value)  $default,){
final _that = this;
switch (_that) {
case _AppThemeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppThemeState value)?  $default,){
final _that = this;
switch (_that) {
case _AppThemeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isDarkTheme,  bool isBangla,  String mapStyle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppThemeState() when $default != null:
return $default(_that.isDarkTheme,_that.isBangla,_that.mapStyle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isDarkTheme,  bool isBangla,  String mapStyle)  $default,) {final _that = this;
switch (_that) {
case _AppThemeState():
return $default(_that.isDarkTheme,_that.isBangla,_that.mapStyle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isDarkTheme,  bool isBangla,  String mapStyle)?  $default,) {final _that = this;
switch (_that) {
case _AppThemeState() when $default != null:
return $default(_that.isDarkTheme,_that.isBangla,_that.mapStyle);case _:
  return null;

}
}

}

/// @nodoc


class _AppThemeState implements AppThemeState {
  const _AppThemeState({required this.isDarkTheme, required this.isBangla, required this.mapStyle});
  

@override final  bool isDarkTheme;
@override final  bool isBangla;
@override final  String mapStyle;

/// Create a copy of AppThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppThemeStateCopyWith<_AppThemeState> get copyWith => __$AppThemeStateCopyWithImpl<_AppThemeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppThemeState&&(identical(other.isDarkTheme, isDarkTheme) || other.isDarkTheme == isDarkTheme)&&(identical(other.isBangla, isBangla) || other.isBangla == isBangla)&&(identical(other.mapStyle, mapStyle) || other.mapStyle == mapStyle));
}


@override
int get hashCode => Object.hash(runtimeType,isDarkTheme,isBangla,mapStyle);

@override
String toString() {
  return 'AppThemeState(isDarkTheme: $isDarkTheme, isBangla: $isBangla, mapStyle: $mapStyle)';
}


}

/// @nodoc
abstract mixin class _$AppThemeStateCopyWith<$Res> implements $AppThemeStateCopyWith<$Res> {
  factory _$AppThemeStateCopyWith(_AppThemeState value, $Res Function(_AppThemeState) _then) = __$AppThemeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isDarkTheme, bool isBangla, String mapStyle
});




}
/// @nodoc
class __$AppThemeStateCopyWithImpl<$Res>
    implements _$AppThemeStateCopyWith<$Res> {
  __$AppThemeStateCopyWithImpl(this._self, this._then);

  final _AppThemeState _self;
  final $Res Function(_AppThemeState) _then;

/// Create a copy of AppThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDarkTheme = null,Object? isBangla = null,Object? mapStyle = null,}) {
  return _then(_AppThemeState(
isDarkTheme: null == isDarkTheme ? _self.isDarkTheme : isDarkTheme // ignore: cast_nullable_to_non_nullable
as bool,isBangla: null == isBangla ? _self.isBangla : isBangla // ignore: cast_nullable_to_non_nullable
as bool,mapStyle: null == mapStyle ? _self.mapStyle : mapStyle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
