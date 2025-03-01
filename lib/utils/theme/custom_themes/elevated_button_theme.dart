import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LElevatedButtonTheme {
  LElevatedButtonTheme._();

    ///--- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, 
      foregroundColor: LColors.white,
      backgroundColor: LColors.jet,
      side: const BorderSide(color: Colors.transparent),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      shadowColor: LColors.white.withAlpha(10),
      textStyle: const TextStyle(fontSize: 14, color: LColors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  ///--- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, 
      foregroundColor: LColors.white,
      backgroundColor: LColors.white.withAlpha(36),
      side: const BorderSide(color: Colors.transparent),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      shadowColor: LColors.white.withAlpha(10),
      textStyle: const TextStyle(fontSize: 14, color: LColors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

}