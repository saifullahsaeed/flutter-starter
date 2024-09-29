import 'package:flutter/material.dart';
import 'package:starter/utils/consts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: onPrimaryColor,
    secondary: secondaryColor,
    onSecondary: onSecondaryColor,
    error: errorColor,
    onError: onSecondaryColor,
    surface: surfaceLight,
    onSurface: Colors.black,
  ),
  primaryColor: primaryColor,
  primaryColorDark: primaryColor,
  fontFamily: fontFamily,
  useMaterial3: true,
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: onPrimaryColor,
    secondary: secondaryColor,
    onSecondary: onSecondaryColor,
    error: errorColor,
    onError: onSecondaryColor,
    surface: surfaceDark,
    onSurface: Colors.white,
  ),
  fontFamily: fontFamily,
  useMaterial3: true,
);
