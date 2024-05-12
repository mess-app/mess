import 'package:flutter/material.dart';

ThemeData buildTheme(Brightness brightness) {
  // final isDark = brightness == Brightness.dark;

  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.greenAccent,
      brightness: brightness,
    ),
  );
}
