import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: GoogleFonts.latoTextTheme(),
  colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(255, 250, 250, 250), // Text color
    secondary:
        Color.fromARGB(255, 10, 10, 10), // Background color // Accent color
    shadow: Color.fromARGB(255, 141, 141, 141),
  ),
);
