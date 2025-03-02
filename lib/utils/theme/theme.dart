import 'package:flutter/material.dart';
import 'package:easy_folio/utils/theme/custom_themes/text_theme.dart';
import 'package:easy_folio/utils/theme/custom_themes/appbar_theme.dart';
import 'package:easy_folio/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:easy_folio/utils/theme/custom_themes/elevated_button_theme.dart';

import '../constants/colors.dart';

class LAppTheme {
  LAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Display',
    brightness: Brightness.light,
    primaryColor: LColors.jet,
    textTheme: TTexTheme.lightTextTheme,
    scaffoldBackgroundColor: LColors.whiteSmoke,
    appBarTheme: LAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: LElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Display',
    brightness: Brightness.dark,
    primaryColor: LColors.white,
    textTheme: TTexTheme.darkTextTheme,
    scaffoldBackgroundColor: LColors.nightLight,
    appBarTheme: LAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: LOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: LElevatedButtonTheme.darkElevatedButtonTheme,
  );
}