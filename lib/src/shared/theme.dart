import 'package:flutter/material.dart';
import 'package:money_saver/src/shared/palette.dart';

ThemeData lightTheme() => ThemeData.light(useMaterial3: true);

ThemeData darkTheme() => ThemeData.dark(useMaterial3: true);

ThemeData bankingTheme() => ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: const ColorScheme.light(
        primary: Palette.lightBlue,
        onPrimary: Palette.green,
        secondary: Palette.darkBlue,
        onSecondary: Palette.gray,
        error: Colors.deepOrange,
        onError: Palette.white));
