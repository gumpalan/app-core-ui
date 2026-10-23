import 'package:flutter/material.dart';
import 'colors.dart';

/// Tema terang dan gelap resmi Gumpalan.
class GumpalanTheme {
  GumpalanTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.light(
      primary: GumpalanColors.darkGreen800,
      onPrimary: Colors.white,
      secondary: GumpalanColors.green700,
      onSecondary: Colors.white,
      surface: Colors.white,
      onSurface: GumpalanColors.dark,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GumpalanColors.creamLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: GumpalanColors.darkGreen900,
        foregroundColor: GumpalanColors.creamLight,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  static ThemeData get darkTheme {
    final colorScheme = ColorScheme.dark(
      primary: GumpalanColors.background,
      onPrimary: GumpalanColors.dark,
      secondary: GumpalanColors.green500,
      onSecondary: GumpalanColors.dark,
      surface: const Color(0xFF131F19),
      onSurface: GumpalanColors.creamLight,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GumpalanColors.dark,
      appBarTheme: const AppBarTheme(
        backgroundColor: GumpalanColors.dark,
        foregroundColor: GumpalanColors.background,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: const Color(0xFF131F19),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
