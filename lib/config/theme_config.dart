import 'package:flutter/material.dart';
import 'package:plk_galacticos/config/config.dart';

class ThemeConfig {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: TypographyConfig.fontFamily,
      textTheme: TypographyConfig.textTheme,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
