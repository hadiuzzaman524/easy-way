
import 'package:easy_way/core/app_colors.dart';
import 'package:flutter/material.dart';

/// define enum for different text style
enum AppTextStyle {
  normal,
  normalBold,
  large,
  largeBold,
  small,
  smallBold,
  headLine1,
  headLine2,
  headLine3
}

/// is the custom text widget.
/// In whole project we use this [AppText] widget instated of [Text]
/// ```dart
/// Center(
///         child: AppText.normalBold('home'),
///       ),
/// ```
///

class AppText extends StatelessWidget {
  /// Factory constructor responsible for normal text
  factory AppText.normal(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.normal,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for normal bold text
  factory AppText.normalBold(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.normalBold,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for large text
  factory AppText.large(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.large,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for large bold text
  factory AppText.largeBold(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.largeBold,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for small text
  factory AppText.small(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.small,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for small bold text
  factory AppText.smallBold(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.smallBold,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for headLine1 text
  factory AppText.headline1(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.headLine1,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for headLine1 text
  factory AppText.headline2(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.headLine2,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  /// Factory constructor responsible for headLine3 text
  factory AppText.headline3(
      String text, {
        TextOverflow? textOverflow,
        Color? color,
        int? maxLine,
        TextAlign? textAlign,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.headLine3,
      textAlign: textAlign,
      textOverflow: textOverflow,
      color: color,
      maxLine: maxLine,
    );
  }

  const AppText._(
      this.text, {
        required this.appTextStyle,
        this.textOverflow,
        this.maxLine,
        this.textAlign,
        this.color,
      });

  /// this variable holds the text
  final String text;

  /// holds the text style
  final AppTextStyle appTextStyle;

  /// holds the text overflow if present
  final TextOverflow? textOverflow;

  /// holds the maximum line number of text
  final int? maxLine;

  /// responsible for align the text
  final TextAlign? textAlign;

  /// hold color if dev. pass custom text color
  final Color? color;

  /// returns text style that initialized by the factory constructor
  TextStyle? getTextStyle(BuildContext context) {
    switch (appTextStyle) {
      case AppTextStyle.normal:

      /// Normal text style
        return TextStyle(
          fontSize: 14,
          color: context.colors.textColor,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyle.normalBold:

      /// Normal bold text style
        return TextStyle(
          fontSize: 14,
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );
      case AppTextStyle.small:

      /// Small text style
        return TextStyle(
          fontSize: 13,
          color: context.colors.textColor,
          fontWeight: FontWeight.w300,
        );
      case AppTextStyle.smallBold:

      /// Small bold text style
        return TextStyle(
          fontSize: 13,
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );

      case AppTextStyle.large:

      /// large text style
        return TextStyle(
          fontSize: 15,
          color: context.colors.textColor,
          fontWeight: FontWeight.w400,
        );
      case AppTextStyle.largeBold:

      /// Large bold text style
        return TextStyle(
          fontSize: 15,
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );

      case AppTextStyle.headLine1:

      /// Headline1 text style
        return TextStyle(
          fontSize: 24,
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );

    /// Headline2 text style
      case AppTextStyle.headLine2:
        return TextStyle(
          fontSize: 18,
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );

    /// Headline3 text style
      case AppTextStyle.headLine3:
        return TextStyle(
          fontSize: 17,
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = getTextStyle(context);
    return Text(
      text,
      style: color != null ? textStyle!.copyWith(color: color) : textStyle,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }
}
