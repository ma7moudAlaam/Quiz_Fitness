import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData light = ThemeData(
      textTheme: TextTheme(
          titleLarge:
              GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.inter(fontSize: 20),
          titleSmall:
              GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
          bodyLarge: GoogleFonts.inter(fontSize: 24),
          bodyMedium: GoogleFonts.inter(fontSize: 16),
          bodySmall:
              GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 2,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF027A48),
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Color(0xFF027A48),
        ),
      ),
      tabBarTheme:const  TabBarTheme(
        dividerColor: Color(0xFF363F72),
        labelStyle:  TextStyle(fontSize: 16),
        labelColor:  Color(0xFF667085),
        indicatorColor:  Color(0xFF363F72),
      ));
}
