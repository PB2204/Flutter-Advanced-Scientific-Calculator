import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  static const fontFamily = 'inter';

  static ThemeData lightThemeData = themeData(lightColorScheme);
  static ThemeData darkThemeData = themeData(darkColorScheme);

  static ThemeData themeData(ColorScheme colorScheme) {
    final onBg = colorScheme.onSurface;
    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      primaryColor: colorScheme.primary,
      appBarTheme: AppBarTheme(
        titleTextStyle:
            _textTheme.headlineMedium!.apply(fontFamily: fontFamily, color: onBg),
        elevation: 0,
      ),
      scaffoldBackgroundColor: colorScheme.bg,
      textTheme: TextTheme(
        displayLarge: TextStyle(fontWeight: _bold, fontSize: 48, color: onBg),
        displayMedium: TextStyle(fontWeight: _bold, fontSize: 38, color: onBg),
        displaySmall: TextStyle(fontWeight: _semiBold, fontSize: 32, color: onBg),
        headlineMedium: TextStyle(fontWeight: _semiBold, fontSize: 24, color: onBg),
        headlineSmall: TextStyle(fontWeight: _medium, fontSize: 20, color: onBg),
        titleLarge: TextStyle(fontWeight: _regular, fontSize: 18, color: onBg),
        //
        bodyLarge: const TextStyle(fontWeight: _regular, fontSize: 16),
        bodyMedium: const TextStyle(fontWeight: _bold, fontSize: 16),
        //
        bodySmall: const TextStyle(fontWeight: _semiBold, fontSize: 16),
        labelLarge: const TextStyle(fontWeight: _bold, fontSize: 18),
        //
      ),
    );
  }

  static final ColorScheme lightColorScheme = ColorScheme.fromSeed(
    seedColor: AppColor.primaryLight,
    primary: AppColor.primaryLight,
    secondary: AppColor.secondaryLight,
    brightness: Brightness.light,
  );

  static final ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: AppColor.primaryDark,
    primary: AppColor.primaryDark,
    secondary: AppColor.secondaryDark,
    brightness: Brightness.dark,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static const TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(fontWeight: _bold, fontSize: 72),
    displayMedium: TextStyle(fontWeight: _bold, fontSize: 48),
    displaySmall: TextStyle(fontWeight: _semiBold, fontSize: 32),
    headlineMedium: TextStyle(fontWeight: _semiBold, fontSize: 24),
    headlineSmall: TextStyle(fontWeight: _medium, fontSize: 18),
    titleLarge: TextStyle(fontWeight: _regular, fontSize: 16),
    //
    titleMedium: TextStyle(fontWeight: _medium, fontSize: 16.0),
    titleSmall: TextStyle(fontWeight: _medium, fontSize: 14.0),
    //
    bodyLarge: TextStyle(fontWeight: _regular, fontSize: 16),
    bodyMedium: TextStyle(fontWeight: _medium, fontSize: 16),
    //
    bodySmall: TextStyle(fontWeight: _semiBold, fontSize: 16),
    labelLarge: TextStyle(fontWeight: _semiBold, fontSize: 18.0),
  );
}
