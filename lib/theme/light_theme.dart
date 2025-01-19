import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: GoogleFonts.latoTextTheme(),
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(255, 250, 250, 250), // Text color
    secondary: Color.fromARGB(255, 10, 10, 10), // Background color // Accent color
    shadow: Color.fromARGB(255, 141, 141, 141),
    tertiary: Color.fromARGB(255, 6, 174, 204),
  ),
);
