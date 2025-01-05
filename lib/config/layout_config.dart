import 'package:flutter/material.dart';

class LayoutConfig {
  static double spacing1 = 0;
  static double spacing2 = 5;
  static double spacing3 = 10;
  static double spacing4 = 15;
  static double spacing5 = 20;
  static double spacing6 = 1000;

  static double spacingSmall = spacing2;
  static double spacingMedium = spacing3;
  static double spacingLarge = spacing5;

  static Widget horizontalSpacingSmall = SizedBox(width: spacingSmall);
  static Widget horizontalSpacingMedium = SizedBox(width: spacingMedium);
  static Widget horizontalSpacingLarge = SizedBox(width: spacingLarge);

  static Widget verticalSpacingSmall = SizedBox(height: spacingSmall);
  static Widget verticalSpacingMedium = SizedBox(height: spacingMedium);
  static Widget verticalSpacingLarge = SizedBox(height: spacingLarge);

  static EdgeInsets insetsSmall = EdgeInsets.all(spacingSmall);
  static EdgeInsets insetsMedium = EdgeInsets.all(spacingMedium);
  static EdgeInsets insetsLarge = EdgeInsets.all(spacingLarge);

  static Divider horizontalDividerSmall = Divider(height: spacingSmall);
  static Divider horizontalDividerMedium = Divider(height: spacingMedium);
  static Divider horizontalDividerLarge = Divider(height: spacingLarge);

  static VerticalDivider verticalDividerSmall = VerticalDivider(
    width: spacingSmall,
  );
  static VerticalDivider verticalDividerMedium = VerticalDivider(
    width: spacingMedium,
  );
  static VerticalDivider verticalDividerLarge = VerticalDivider(
    width: spacingLarge,
  );

  static BorderRadius circularBorderRadius1 = BorderRadius.circular(spacing1);
  static BorderRadius circularBorderRadius2 = BorderRadius.circular(spacing2);
  static BorderRadius circularBorderRadius3 = BorderRadius.circular(spacing3);
  static BorderRadius circularBorderRadius4 = BorderRadius.circular(spacing4);
  static BorderRadius circularBorderRadius5 = BorderRadius.circular(spacing5);
  static BorderRadius circularBorderRadius6 = BorderRadius.circular(spacing6);

  static BorderRadius circularBorderRadiusMin = circularBorderRadius1;
  static BorderRadius circularBorderRadiusSmall = circularBorderRadius2;
  static BorderRadius circularBorderRadiusMedium = circularBorderRadius3;
  static BorderRadius circularBorderRadiusLarge = circularBorderRadius5;
  static BorderRadius circularBorderRadiusMax = circularBorderRadius6;

  static Radius circularRadius1 = Radius.circular(spacing1);
  static Radius circularRadius2 = Radius.circular(spacing2);
  static Radius circularRadius3 = Radius.circular(spacing3);
  static Radius circularRadius4 = Radius.circular(spacing4);
  static Radius circularRadius5 = Radius.circular(spacing5);
  static Radius circularRadius6 = Radius.circular(spacing6);

  static Radius circularRadiusMin = circularRadius1;
  static Radius circularRadiusSmall = circularRadius2;
  static Radius circularRadiusMedium = circularRadius3;
  static Radius circularRadiusLarge = circularRadius5;
  static Radius circularRadiusMax = circularRadius6;
}
