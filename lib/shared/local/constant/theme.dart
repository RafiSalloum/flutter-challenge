import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/shared/local/constant/color.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white70,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  useMaterial3: true,
  textTheme: TextTheme(
    headlineSmall: GoogleFonts.alexandria(
        fontWeight: FontWeight.w300, fontSize: 16, color: ColorApp.grey),
    headlineMedium: GoogleFonts.alexandria(
        fontWeight: FontWeight.bold, fontSize: 22, color: ColorApp.black),
    headlineLarge: GoogleFonts.alexandria(
        fontWeight: FontWeight.bold, fontSize: 26, color: ColorApp.black),
    bodyMedium: GoogleFonts.alexandria(
        height: 2,
        color: ColorApp.black,
        fontWeight: FontWeight.bold,
        fontSize: 14),
    bodySmall: GoogleFonts.alexandria(height: 2, color: ColorApp.grey, fontSize: 14),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: ColorApp.primaryColor,
    secondary: ColorApp.secondaryColor,
  ),
);
