import 'package:flutter/material.dart';

import 'colors.dart';

/// Tema terang dan gelap resmi Gumpalan.
class GumpalanTheme {
  GumpalanTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.light(
      primary: GumpalanColors.emerald700,
      onPrimary: Colors.white,
      primaryContainer: const Color(0xFFDCFCE7),
      onPrimaryContainer: GumpalanColors.emerald900,
      secondary: GumpalanColors.emerald600,
      onSecondary: Colors.white,
      surface: GumpalanColors.lightSurface,
      onSurface: GumpalanColors.dark,
      surfaceContainerHighest: GumpalanColors.lightSurfaceVariant,
      onSurfaceVariant: const Color(0xFF4A5D52),
      outline: GumpalanColors.lightBorder,
      outlineVariant: const Color(0xFFE2EBE5),
      error: const Color(0xFFDC2626),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GumpalanColors.lightBg,
      appBarTheme: const AppBarTheme(
        backgroundColor: GumpalanColors.lightBg,
        foregroundColor: GumpalanColors.dark,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: GumpalanColors.dark,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.2,
        ),
      ),
      cardTheme: CardThemeData(
        color: GumpalanColors.lightSurface,
        elevation: 1,
        shadowColor: const Color(0x0A000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: GumpalanColors.lightBorder, width: 1),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: GumpalanColors.lightSurface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: GumpalanColors.lightBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: GumpalanColors.lightBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: GumpalanColors.emerald700,
            width: 1.5,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: GumpalanColors.emerald700,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        constraints: BoxConstraints(maxWidth: 600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),
      dialogTheme: DialogThemeData(
        constraints: const BoxConstraints(maxWidth: 500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  static ThemeData get darkTheme {
    final colorScheme = ColorScheme.dark(
      primary: GumpalanColors.emerald400,
      onPrimary: GumpalanColors.dark,
      primaryContainer: GumpalanColors.darkGreen900,
      onPrimaryContainer: const Color(0xFFA7F3D0),
      secondary: GumpalanColors.green500,
      onSecondary: GumpalanColors.dark,
      surface: GumpalanColors.obsidianSurface,
      onSurface: Colors.white,
      surfaceContainerHighest: GumpalanColors.obsidianSurfaceVariant,
      onSurfaceVariant: const Color(0xFF9EAF9F),
      outline: GumpalanColors.obsidianBorder,
      outlineVariant: const Color(0x1AFFFFFF),
      error: const Color(0xFFEF4444),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GumpalanColors.obsidianBg,
      appBarTheme: const AppBarTheme(
        backgroundColor: GumpalanColors.obsidianBg,
        foregroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.2,
        ),
      ),
      cardTheme: CardThemeData(
        color: GumpalanColors.obsidianSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: GumpalanColors.obsidianBorder,
            width: 1,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: GumpalanColors.obsidianSurface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: GumpalanColors.obsidianBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: GumpalanColors.obsidianBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: GumpalanColors.emerald400,
            width: 1.5,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: GumpalanColors.emerald400,
          foregroundColor: GumpalanColors.dark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        constraints: BoxConstraints(maxWidth: 600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),
      dialogTheme: DialogThemeData(
        constraints: const BoxConstraints(maxWidth: 500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
