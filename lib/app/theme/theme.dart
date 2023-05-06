import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const lightPrimaryColor = Color(0xFF42446E);
const lightSecondaryColor = Color(0xFF666666);
const primaryTextColor = Color(0xFF42446E);

const darkPrimaryColor = Color(0xFFCCCCCC);
const darkSecondaryColor = Color(0xFF666666);
const darkPrimaryTextColor = Color(0xFFCCCCCC);

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: lightPrimaryColor,
    onPrimary: Colors.white,
    secondary: lightSecondaryColor,
    onSecondary: lightSecondaryColor,
    error: Colors.red.shade900,
    onError: Colors.white,
    background: lightPrimaryColor,
    onBackground: Colors.white,
    surface: lightPrimaryColor,
    onSurface: lightSecondaryColor,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      headlineMedium: TextStyle(color: primaryTextColor),
      headlineSmall: TextStyle(color: primaryTextColor),
      titleLarge: TextStyle(color: primaryTextColor),
      titleMedium: TextStyle(color: primaryTextColor),
      titleSmall: TextStyle(color: primaryTextColor),
      bodyLarge: TextStyle(color: primaryTextColor),
      labelLarge: TextStyle(color: primaryTextColor),
      labelMedium: TextStyle(color: primaryTextColor),
      labelSmall: TextStyle(color: primaryTextColor),
    ),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: primaryTextColor),
    backgroundColor: Colors.transparent,
    foregroundColor: primaryTextColor,
    elevation: 0,
    centerTitle: false,
  ),
);

ThemeData darkTheme = ThemeData(
  canvasColor: const Color(0xFF191919),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: darkPrimaryColor,
    onPrimary: Colors.white,
    secondary: darkSecondaryColor,
    onSecondary: darkSecondaryColor,
    error: Colors.red.shade900,
    onError: Colors.white,
    background: darkPrimaryColor,
    onBackground: Colors.white,
    surface: darkPrimaryColor,
    onSurface: darkSecondaryColor,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      headlineMedium: TextStyle(color: darkPrimaryTextColor),
      headlineSmall: TextStyle(color: darkPrimaryTextColor),
      titleLarge: TextStyle(color: darkPrimaryTextColor),
      titleMedium: TextStyle(color: darkPrimaryTextColor),
      titleSmall: TextStyle(color: darkPrimaryTextColor),
      bodyLarge: TextStyle(color: darkPrimaryTextColor),
      bodyMedium: TextStyle(color: darkPrimaryTextColor),
      bodySmall: TextStyle(color: darkPrimaryTextColor),
      labelLarge: TextStyle(color: darkPrimaryTextColor),
      labelMedium: TextStyle(color: darkPrimaryTextColor),
      labelSmall: TextStyle(color: darkPrimaryTextColor),
    ),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: primaryTextColor),
    backgroundColor: Colors.transparent,
    foregroundColor: primaryTextColor,
    elevation: 0,
    centerTitle: false,
  ),
);
