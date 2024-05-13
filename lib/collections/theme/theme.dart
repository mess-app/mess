import 'package:flutter/material.dart';

ThemeData buildTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;

  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.greenAccent,
    background: isDark ? Colors.grey[900] : Colors.white,
    surface: isDark ? Colors.grey[900] : Colors.white,
    brightness: brightness,
  );
  return ThemeData(
    colorScheme: colorScheme,
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: false,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      color: colorScheme.background,
    ),
  );
}
