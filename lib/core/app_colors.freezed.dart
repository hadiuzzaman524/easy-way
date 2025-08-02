// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppColors {

 Color get primaryColor; Color get textColor; Color get buttonColor; Color get backGroundColor; Color get borderColor; Color get cardColor; Color get iconColor; Color get lightTextColor; Color get darkTextColor;
/// Create a copy of AppColors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppColorsCopyWith<AppColors> get copyWith => _$AppColorsCopyWithImpl<AppColors>(this as AppColors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppColors&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.buttonColor, buttonColor) || other.buttonColor == buttonColor)&&(identical(other.backGroundColor, backGroundColor) || other.backGroundColor == backGroundColor)&&(identical(other.borderColor, borderColor) || other.borderColor == borderColor)&&(identical(other.cardColor, cardColor) || other.cardColor == cardColor)&&(identical(other.iconColor, iconColor) || other.iconColor == iconColor)&&(identical(other.lightTextColor, lightTextColor) || other.lightTextColor == lightTextColor)&&(identical(other.darkTextColor, darkTextColor) || other.darkTextColor == darkTextColor));
}


@override
int get hashCode => Object.hash(runtimeType,primaryColor,textColor,buttonColor,backGroundColor,borderColor,cardColor,iconColor,lightTextColor,darkTextColor);

@override
String toString() {
  return 'AppColors(primaryColor: $primaryColor, textColor: $textColor, buttonColor: $buttonColor, backGroundColor: $backGroundColor, borderColor: $borderColor, cardColor: $cardColor, iconColor: $iconColor, lightTextColor: $lightTextColor, darkTextColor: $darkTextColor)';
}


}

/// @nodoc
abstract mixin class $AppColorsCopyWith<$Res>  {
  factory $AppColorsCopyWith(AppColors value, $Res Function(AppColors) _then) = _$AppColorsCopyWithImpl;
@useResult
$Res call({
 Color primaryColor, Color textColor, Color buttonColor, Color backGroundColor, Color borderColor, Color cardColor, Color iconColor, Color lightTextColor, Color darkTextColor
});




}
/// @nodoc
class _$AppColorsCopyWithImpl<$Res>
    implements $AppColorsCopyWith<$Res> {
  _$AppColorsCopyWithImpl(this._self, this._then);

  final AppColors _self;
  final $Res Function(AppColors) _then;

/// Create a copy of AppColors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primaryColor = null,Object? textColor = null,Object? buttonColor = null,Object? backGroundColor = null,Object? borderColor = null,Object? cardColor = null,Object? iconColor = null,Object? lightTextColor = null,Object? darkTextColor = null,}) {
  return _then(_self.copyWith(
primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as Color,textColor: null == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color,buttonColor: null == buttonColor ? _self.buttonColor : buttonColor // ignore: cast_nullable_to_non_nullable
as Color,backGroundColor: null == backGroundColor ? _self.backGroundColor : backGroundColor // ignore: cast_nullable_to_non_nullable
as Color,borderColor: null == borderColor ? _self.borderColor : borderColor // ignore: cast_nullable_to_non_nullable
as Color,cardColor: null == cardColor ? _self.cardColor : cardColor // ignore: cast_nullable_to_non_nullable
as Color,iconColor: null == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as Color,lightTextColor: null == lightTextColor ? _self.lightTextColor : lightTextColor // ignore: cast_nullable_to_non_nullable
as Color,darkTextColor: null == darkTextColor ? _self.darkTextColor : darkTextColor // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [AppColors].
extension AppColorsPatterns on AppColors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppColors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppColors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppColors value)  $default,){
final _that = this;
switch (_that) {
case _AppColors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppColors value)?  $default,){
final _that = this;
switch (_that) {
case _AppColors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Color primaryColor,  Color textColor,  Color buttonColor,  Color backGroundColor,  Color borderColor,  Color cardColor,  Color iconColor,  Color lightTextColor,  Color darkTextColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppColors() when $default != null:
return $default(_that.primaryColor,_that.textColor,_that.buttonColor,_that.backGroundColor,_that.borderColor,_that.cardColor,_that.iconColor,_that.lightTextColor,_that.darkTextColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Color primaryColor,  Color textColor,  Color buttonColor,  Color backGroundColor,  Color borderColor,  Color cardColor,  Color iconColor,  Color lightTextColor,  Color darkTextColor)  $default,) {final _that = this;
switch (_that) {
case _AppColors():
return $default(_that.primaryColor,_that.textColor,_that.buttonColor,_that.backGroundColor,_that.borderColor,_that.cardColor,_that.iconColor,_that.lightTextColor,_that.darkTextColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Color primaryColor,  Color textColor,  Color buttonColor,  Color backGroundColor,  Color borderColor,  Color cardColor,  Color iconColor,  Color lightTextColor,  Color darkTextColor)?  $default,) {final _that = this;
switch (_that) {
case _AppColors() when $default != null:
return $default(_that.primaryColor,_that.textColor,_that.buttonColor,_that.backGroundColor,_that.borderColor,_that.cardColor,_that.iconColor,_that.lightTextColor,_that.darkTextColor);case _:
  return null;

}
}

}

/// @nodoc


class _AppColors implements AppColors {
  const _AppColors({required this.primaryColor, required this.textColor, required this.buttonColor, required this.backGroundColor, required this.borderColor, required this.cardColor, required this.iconColor, required this.lightTextColor, required this.darkTextColor});
  

@override final  Color primaryColor;
@override final  Color textColor;
@override final  Color buttonColor;
@override final  Color backGroundColor;
@override final  Color borderColor;
@override final  Color cardColor;
@override final  Color iconColor;
@override final  Color lightTextColor;
@override final  Color darkTextColor;

/// Create a copy of AppColors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppColorsCopyWith<_AppColors> get copyWith => __$AppColorsCopyWithImpl<_AppColors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppColors&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.buttonColor, buttonColor) || other.buttonColor == buttonColor)&&(identical(other.backGroundColor, backGroundColor) || other.backGroundColor == backGroundColor)&&(identical(other.borderColor, borderColor) || other.borderColor == borderColor)&&(identical(other.cardColor, cardColor) || other.cardColor == cardColor)&&(identical(other.iconColor, iconColor) || other.iconColor == iconColor)&&(identical(other.lightTextColor, lightTextColor) || other.lightTextColor == lightTextColor)&&(identical(other.darkTextColor, darkTextColor) || other.darkTextColor == darkTextColor));
}


@override
int get hashCode => Object.hash(runtimeType,primaryColor,textColor,buttonColor,backGroundColor,borderColor,cardColor,iconColor,lightTextColor,darkTextColor);

@override
String toString() {
  return 'AppColors(primaryColor: $primaryColor, textColor: $textColor, buttonColor: $buttonColor, backGroundColor: $backGroundColor, borderColor: $borderColor, cardColor: $cardColor, iconColor: $iconColor, lightTextColor: $lightTextColor, darkTextColor: $darkTextColor)';
}


}

/// @nodoc
abstract mixin class _$AppColorsCopyWith<$Res> implements $AppColorsCopyWith<$Res> {
  factory _$AppColorsCopyWith(_AppColors value, $Res Function(_AppColors) _then) = __$AppColorsCopyWithImpl;
@override @useResult
$Res call({
 Color primaryColor, Color textColor, Color buttonColor, Color backGroundColor, Color borderColor, Color cardColor, Color iconColor, Color lightTextColor, Color darkTextColor
});




}
/// @nodoc
class __$AppColorsCopyWithImpl<$Res>
    implements _$AppColorsCopyWith<$Res> {
  __$AppColorsCopyWithImpl(this._self, this._then);

  final _AppColors _self;
  final $Res Function(_AppColors) _then;

/// Create a copy of AppColors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primaryColor = null,Object? textColor = null,Object? buttonColor = null,Object? backGroundColor = null,Object? borderColor = null,Object? cardColor = null,Object? iconColor = null,Object? lightTextColor = null,Object? darkTextColor = null,}) {
  return _then(_AppColors(
primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as Color,textColor: null == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color,buttonColor: null == buttonColor ? _self.buttonColor : buttonColor // ignore: cast_nullable_to_non_nullable
as Color,backGroundColor: null == backGroundColor ? _self.backGroundColor : backGroundColor // ignore: cast_nullable_to_non_nullable
as Color,borderColor: null == borderColor ? _self.borderColor : borderColor // ignore: cast_nullable_to_non_nullable
as Color,cardColor: null == cardColor ? _self.cardColor : cardColor // ignore: cast_nullable_to_non_nullable
as Color,iconColor: null == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as Color,lightTextColor: null == lightTextColor ? _self.lightTextColor : lightTextColor // ignore: cast_nullable_to_non_nullable
as Color,darkTextColor: null == darkTextColor ? _self.darkTextColor : darkTextColor // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
