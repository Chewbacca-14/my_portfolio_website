import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ColorScheme _darkColorScheme = const ColorScheme.dark(
  primary: Color(0xFFF5F7FB),
  secondary: Color(0xFF09111F),
  tertiary: Color(0xFF60A5FA),
  shadow: Color(0xFF94A3B8),
  surface: Color(0xFF10192B),
  outline: Color(0xFF22314B),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: _darkColorScheme,
  scaffoldBackgroundColor: _darkColorScheme.secondary,
  textTheme: GoogleFonts.manropeTextTheme(
    ThemeData.dark().textTheme,
  ).apply(
    bodyColor: _darkColorScheme.primary,
    displayColor: _darkColorScheme.primary,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: _darkColorScheme.primary,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: GoogleFonts.manrope(
      color: _darkColorScheme.primary,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.4,
    ),
  ),
  cardColor: _darkColorScheme.surface,
  shadowColor: const Color(0xFF020817),
  dividerColor: _darkColorScheme.outline,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      backgroundColor: _darkColorScheme.primary,
      foregroundColor: _darkColorScheme.secondary,
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
