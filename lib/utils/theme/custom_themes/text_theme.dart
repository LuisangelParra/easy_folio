import 'package:flutter/material.dart';

class TTexTheme {
  TTexTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 40.0, fontWeight: FontWeight.w600, color: Colors.black), // Heading 1
    headlineMedium:  const TextStyle().copyWith(fontSize: 26.0, fontWeight: FontWeight.w600, color: Colors.black), // Heading 2
    headlineSmall: const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w500, color: Colors.black), // Heading 3

    titleLarge: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black), // Heading 4
    titleMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black), // Heading 5
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.black), // Heading 6

    bodyLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black), // Regular18
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black), // Regular16
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black), // Regular14

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.black), // Regular12
  );
  
  /// Customizable Dark Text Theme
    static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 40.0, fontWeight: FontWeight.w600, color: Colors.white), // Heading 1
    headlineMedium:  const TextStyle().copyWith(fontSize: 26.0, fontWeight: FontWeight.w600, color: Colors.white), // Heading 2
    headlineSmall: const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w500, color: Colors.white), // Heading 3

    titleLarge: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white), // Heading 4
    titleMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white), // Heading 5
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.white), // Heading 6

    bodyLarge: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.white), // Regular18
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white), // Regular16
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.white), // Regular14

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.white), // Regular12
  );
}