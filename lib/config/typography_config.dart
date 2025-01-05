import 'package:flutter/material.dart';

const double _fontSizeDisplayLarge = 62;
const FontWeight _fontWeightDisplayLarge = FontWeight.w400;
const double _fontSizeDisplayMedium = 50;
const FontWeight _fontWeightDisplayMedium = FontWeight.w400;
const double _fontSizeDisplaySmall = 40;
const FontWeight _fontWeightDisplaySmall = FontWeight.w400;

const double _fontSizeHeadlineLarge = 32;
const FontWeight _fontWeightHeadlineLarge = FontWeight.w400;
const double _fontSizeHeadlineMedium = 24;
const FontWeight _fontWeightHeadlineMedium = FontWeight.w400;
const double _fontSizeHeadlineSmall = 20;
const FontWeight _fontWeightHeadlineSmall = FontWeight.w400;

const double _fontSizeTitleLarge = 16;
const FontWeight _fontWeightTitleLarge = FontWeight.w400;
const double _fontSizeTitleMedium = 12;
const FontWeight _fontWeightTitleMedium = FontWeight.w400;
const double _fontSizeTitleSmall = 10;
const FontWeight _fontWeightTitleSmall = FontWeight.w400;

const String _defaultFontFamily = 'Inter';
const double _defaultLetterSpacing = 0;
const Color _defaultTextColor = Colors.black;
const TextDecoration _defaultTextDecoration = TextDecoration.none;

const TextStyle _defaultTextStyle = TextStyle(
  fontSize: _fontSizeDisplayLarge,
  fontWeight: _fontWeightDisplayLarge,
  fontFamily: _defaultFontFamily,
  letterSpacing: _defaultLetterSpacing,
  color: _defaultTextColor,
  decoration: _defaultTextDecoration,
);

TextTheme _textTheme = TextTheme(
  displayLarge: _defaultTextStyle.copyWith(
    debugLabel: 'typographyDisplayLarge',
    fontSize: _fontSizeDisplayLarge,
    fontWeight: _fontWeightDisplayLarge,
  ),
  displayMedium: _defaultTextStyle.copyWith(
    debugLabel: 'typographyDisplayMedium',
    fontSize: _fontSizeDisplayMedium,
    fontWeight: _fontWeightDisplayMedium,
  ),
  displaySmall: _defaultTextStyle.copyWith(
    debugLabel: 'typographyDisplaySmall',
    fontSize: _fontSizeDisplaySmall,
    fontWeight: _fontWeightDisplaySmall,
  ),
  headlineLarge: _defaultTextStyle.copyWith(
    debugLabel: 'typographyHeadlineLarge',
    fontSize: _fontSizeHeadlineLarge,
    fontWeight: _fontWeightHeadlineLarge,
  ),
  headlineMedium: _defaultTextStyle.copyWith(
    debugLabel: 'typographyHeadlineMedium',
    fontSize: _fontSizeHeadlineMedium,
    fontWeight: _fontWeightHeadlineMedium,
  ),
  headlineSmall: _defaultTextStyle.copyWith(
    debugLabel: 'typographyHeadlineSmall',
    fontSize: _fontSizeHeadlineSmall,
    fontWeight: _fontWeightHeadlineSmall,
  ),
  titleLarge: _defaultTextStyle.copyWith(
    debugLabel: 'typographyTitleLarge',
    fontSize: _fontSizeTitleLarge,
    fontWeight: _fontWeightTitleLarge,
  ),
  titleMedium: _defaultTextStyle.copyWith(
    debugLabel: 'typographyTitleMedium',
    fontSize: _fontSizeTitleMedium,
    fontWeight: _fontWeightTitleMedium,
  ),
  titleSmall: _defaultTextStyle.copyWith(
    debugLabel: 'typographyTitleSmall',
    fontSize: _fontSizeTitleSmall,
    fontWeight: _fontWeightTitleSmall,
  ),
);

class TypographyConfig {
  static String get fontFamily => _defaultFontFamily;

  static TextTheme get textTheme => _textTheme;
}
