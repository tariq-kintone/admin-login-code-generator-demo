import 'package:flutter/material.dart';

ThemeData buildTheme({required ColorScheme colorScheme}) {
  return ThemeData(
    colorScheme: colorScheme,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    inputDecorationTheme:
        const InputDecorationTheme(border: OutlineInputBorder()),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            fixedSize: const MaterialStatePropertyAll(Size.fromHeight(42)),
            backgroundColor: MaterialStatePropertyAll(colorScheme.primary),
            foregroundColor: MaterialStatePropertyAll(colorScheme.onPrimary),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4))))),
    cardTheme: const CardTheme(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      elevation: 4,
    ),
    appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 4,
        color: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary),
    useMaterial3: true,
  );
}
