import 'package:flutter/material.dart';
import 'package:flutter_template/theme/theme_fonts.dart';

class AppTheme {
  static final _darkThemeData = ThemeData(
    fontFamily: ThemeFonts.poppins,
  );

  static final _lightThemeData = _darkThemeData.copyWith();

  static ThemeData darkTheme(TargetPlatform? targetPlatform) => _darkThemeData.copyWith(platform: targetPlatform);

  static ThemeData lightTheme(TargetPlatform? targetPlatform) => _lightThemeData.copyWith(platform: targetPlatform);
}
