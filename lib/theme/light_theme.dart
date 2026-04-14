import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ColorScheme _lightColorScheme = const ColorScheme.light(
  primary: Color(0xFF142033),
  secondary: Color(0xFFF4F7FB),
  tertiary: Color(0xFF2563EB),
  shadow: Color(0xFF5B6B84),
  surface: Colors.white,
  outline: Color(0xFFD7DFEA),
);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: _lightColorScheme,
  scaffoldBackgroundColor: _lightColorScheme.secondary,
  textTheme: GoogleFonts.manropeTextTheme(
    ThemeData.light().textTheme,
  ).apply(
    bodyColor: _lightColorScheme.primary,
    displayColor: _lightColorScheme.primary,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: _lightColorScheme.primary,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: GoogleFonts.manrope(
      color: _lightColorScheme.primary,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.4,
    ),
  ),
  dividerColor: _lightColorScheme.outline,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      backgroundColor: _lightColorScheme.primary,
      foregroundColor: Colors.white,
      textStyle: GoogleFonts.manrope(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
  ),
);
