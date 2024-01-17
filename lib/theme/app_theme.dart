import 'package:flutter/material.dart';
import 'package:flutter_template/theme/theme_colors.dart';
import 'package:flutter_template/theme/theme_fonts.dart';

class AppTheme {
  // Material Theme
  static final _darkThemeData = ThemeData(
    colorScheme: const ColorScheme(
      primary: ThemeColors.primary,
      secondary: ThemeColors.accent,
      brightness: Brightness.dark,
      onPrimary: ThemeColors.white,
      onSecondary: ThemeColors.white,
      error: ThemeColors.danger,
      onError: ThemeColors.white,
      background: ThemeColors.white,
      onBackground: ThemeColors.primary,
      surface: ThemeColors.white,
      onSurface: ThemeColors.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF7D64F2),
    ),
    fontFamily: ThemeFonts.ubuntu,
  );

  static final _lightThemeData = _darkThemeData.copyWith(brightness: Brightness.light);

  static ThemeData darkTheme(TargetPlatform? targetPlatform) => _darkThemeData.copyWith(platform: targetPlatform);

  static ThemeData lightTheme(TargetPlatform? targetPlatform) => _lightThemeData.copyWith(platform: targetPlatform);

  // App Theme
  static final _instanceLight = _getAppTheme();
  static final _instanceDark = _instanceLight;

  static AppTheme _getAppTheme() {
    return AppTheme(
      colors: const AppColorTheme(
        primary: ThemeColors.primary,
        accent: ThemeColors.accent,
        invertedPrimary: Colors.white,
      ),
      textStyles: AppTextStylesTheme(
        primary: _getTextStyleTheme(ThemeColors.textPrimary),
        invertedPrimary: _getTextStyleTheme(ThemeColors.textInvertedPrimary),
      ),
    );
  }

  static AppTextStyleTheme _getTextStyleTheme(Color color) {
    return AppTextStyleTheme(
      title: TextStyle(fontSize: 20, height: 1.2, fontWeight: FontWeight.bold, fontFamily: ThemeFonts.ubuntu, color: color),
      listItemTitle: TextStyle(fontSize: 16, height: 1.2, fontWeight: FontWeight.w600, fontFamily: ThemeFonts.ubuntu, color: color),
      bodyInput: TextStyle(fontSize: 16, height: 1.2, fontWeight: FontWeight.normal, fontFamily: ThemeFonts.ubuntu, color: color),
      body: TextStyle(fontSize: 13, height: 1.2, fontWeight: FontWeight.normal, fontFamily: ThemeFonts.ubuntu, color: color),
      smallBody: TextStyle(fontSize: 11, height: 1.2, fontWeight: FontWeight.normal, fontFamily: ThemeFonts.ubuntu, color: color),
    );
  }

  final AppColorTheme colors;
  final AppTextStylesTheme textStyles;

  const AppTheme({
    required this.colors,
    required this.textStyles,
  });

  static AppTheme of(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? _instanceDark : _instanceLight;
}

class AppColorTheme {
  final Color primary;
  final Color accent;
  final Color invertedPrimary;

  const AppColorTheme({
    required this.primary,
    required this.accent,
    required this.invertedPrimary,
  });
}

class AppTextStylesTheme {
  final AppTextStyleTheme primary;
  final AppTextStyleTheme invertedPrimary;

  const AppTextStylesTheme({
    required this.primary,
    required this.invertedPrimary,
  });
}

class AppTextStyleTheme {
  final TextStyle title;
  final TextStyle listItemTitle;
  final TextStyle body;
  final TextStyle smallBody;
  final TextStyle bodyInput;

  const AppTextStyleTheme({
    required this.title,
    required this.listItemTitle,
    required this.body,
    required this.smallBody,
    required this.bodyInput,
  });
}
