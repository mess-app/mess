import 'package:flutter/material.dart';

const brandColors = (
  lightGray: 0xFFF0F0F0,
  ashGray: 0xFFc2cfb2,
  olivine: 0xFF8db580,
  battleshipGray: 0xFF7e8987,
  englishViolet: 0xFF4b4ae6,
);

const brandColorsDark = (
  lightGray: 0xFF424242,
  ashGray: 0xFF44493D,
  olivine: 0xFF9AEF7D,
  battleshipGray: 0xFF4D4D4D,
  englishViolet: 0xFF6A1B9A,
);

final lightColorScheme = ColorScheme.light(
  primary: Color(brandColors.olivine),
  primaryContainer: Color(brandColors.ashGray),
  onPrimary: Colors.grey[100]!,
  onPrimaryContainer: Colors.grey[800]!,
  secondary: Color(brandColors.englishViolet),
  secondaryContainer: Color(brandColors.battleshipGray),
  onSecondary: Colors.white,
  onSecondaryContainer: Colors.grey[50]!,
  surface: Colors.white,
  surfaceVariant: Color(brandColors.lightGray),
  onSurface: Colors.grey[900]!,
  onSurfaceVariant: Colors.grey[700]!,
  background: Colors.white,
  onBackground: Colors.grey[900]!,
  error: Colors.red[400]!,
  errorContainer: Colors.red[100]!,
  onError: Colors.white,
  onErrorContainer: Colors.grey[800]!,
  inversePrimary: const Color(0xFF9AEF7D),
  inverseSurface: Colors.black,
  onInverseSurface: Colors.white,
  outline: Colors.grey[300]!,
  outlineVariant: Colors.grey,
  tertiary: Colors.purple[800],
  tertiaryContainer: Colors.purple[100],
  onTertiary: Colors.white,
  onTertiaryContainer: Colors.purple[800],
  scrim: Colors.black.withOpacity(0.5),
  shadow: Colors.black.withOpacity(0.1),
  surfaceTint: Colors.black.withOpacity(0.1),
);

final darkColorScheme = ColorScheme.dark(
  primary: Color(brandColorsDark.olivine),
  primaryContainer: Color(brandColorsDark.ashGray),
  onPrimary: Colors.grey[700]!,
  onPrimaryContainer: Colors.grey[800]!,
  secondary: Color(brandColorsDark.englishViolet),
  secondaryContainer: Color(brandColorsDark.battleshipGray),
  onSecondary: Colors.white,
  onSecondaryContainer: Colors.grey[800]!,
  surface: Colors.grey[900]!,
  surfaceVariant: Color(brandColorsDark.lightGray),
  onSurface: Colors.grey[50]!,
  onSurfaceVariant: Colors.grey[200]!,
  background: Colors.grey[900]!,
  onBackground: Colors.grey[50]!,
  error: Colors.red[300]!,
  errorContainer: Colors.red[900]!,
  onError: Colors.grey[50]!,
  onErrorContainer: Colors.white,
  inversePrimary: const Color(0xFF9AEF7D),
  inverseSurface: Colors.white,
  onInverseSurface: Colors.black,
  outline: Colors.grey[600]!,
  outlineVariant: Colors.grey,
  tertiary: Colors.purple[200],
  tertiaryContainer: Colors.purple[800],
  onTertiary: Colors.grey[800],
  onTertiaryContainer: Colors.purple[200],
  scrim: Colors.white.withOpacity(0.5),
  shadow: Colors.white.withOpacity(0.1),
  surfaceTint: Colors.white.withOpacity(0.1),
);

ThemeData buildTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;

  final colorScheme = isDark ? darkColorScheme : lightColorScheme;
  const defaultBorderRadius = BorderRadius.all(Radius.circular(6));

  return ThemeData(
    colorScheme: colorScheme,
    iconTheme: IconThemeData(opacity: 1, color: colorScheme.onBackground),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: false,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      color: colorScheme.background,
      titleSpacing: 2,
      actionsIconTheme: const IconThemeData(opacity: 1),
    ),
    searchBarTheme: SearchBarThemeData(
      shape: const MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: defaultBorderRadius),
      ),
      elevation: const MaterialStatePropertyAll(0),
      backgroundColor: MaterialStatePropertyAll(colorScheme.surfaceVariant),
      overlayColor: MaterialStatePropertyAll(colorScheme.surfaceVariant),
      constraints: const BoxConstraints(
        minHeight: 40,
        maxHeight: 40,
      ),
      hintStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 14,
          color: colorScheme.onSurface.withOpacity(0.6),
          fontWeight: FontWeight.normal,
          height: .8,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: colorScheme.surfaceVariant,
      border: const OutlineInputBorder(
        borderRadius: defaultBorderRadius,
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: defaultBorderRadius,
        borderSide: BorderSide(
          color: colorScheme.primary,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: defaultBorderRadius,
        borderSide: BorderSide(
          color: colorScheme.error,
          width: 1,
        ),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      hintStyle: TextStyle(
        fontSize: 14,
        color: colorScheme.onSurface.withOpacity(0.6),
        fontWeight: FontWeight.normal,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: defaultBorderRadius,
        ),
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: const RoundedRectangleBorder(borderRadius: defaultBorderRadius),
      iconColor: colorScheme.onBackground,
    ),
  );
}
