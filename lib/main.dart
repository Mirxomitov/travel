import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff031F2B),
          colorScheme: ColorScheme.fromSeed(
            primary: const Color(0xff5EDFFF),
            seedColor: const Color(0xff031F2B),
            surface: const Color(0xff031F2B),
            secondary: const Color(0xffEFF6F8),
            tertiary: const Color(0xff263238),
          ),
          textTheme: _textTheme,
          useMaterial3: true,
        ),
        home: const Intro());
  }
}

final _textTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(color: Colors.white),
  displayMedium: GoogleFonts.poppins(color: Colors.white),
  displaySmall: GoogleFonts.poppins(color: Colors.white),
  headlineLarge: GoogleFonts.poppins(color: Colors.white),
  headlineMedium: GoogleFonts.poppins(color: Colors.white),
  headlineSmall: GoogleFonts.poppins(color: Colors.white),
  titleLarge: GoogleFonts.poppins(color: Colors.white),
  titleMedium: GoogleFonts.poppins(color: Colors.white),
  titleSmall: GoogleFonts.poppins(color: Colors.white),
  bodyLarge: GoogleFonts.poppins(color: Colors.white),
  bodyMedium: GoogleFonts.poppins(color: Colors.white),
  bodySmall: GoogleFonts.poppins(color: Colors.white),
  labelLarge: GoogleFonts.poppins(color: Colors.white),
  labelMedium: GoogleFonts.poppins(color: Colors.white),
  labelSmall: GoogleFonts.poppins(color: Colors.white),
);
