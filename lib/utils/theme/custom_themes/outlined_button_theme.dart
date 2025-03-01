import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LOutlinedButtonTheme {
  LOutlinedButtonTheme._();

  ///--- Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor:LColors.night,
      side: BorderSide(color: LColors.frenchGray.withAlpha(179)),
      textStyle: const TextStyle(fontSize: 14, color: LColors.night, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  ///--- Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor:LColors.white,
      side: BorderSide(color: LColors.white.withAlpha(31)),
      textStyle: const TextStyle(fontSize: 14, color: LColors.white, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

}