import 'package:flutter/material.dart';

class LAppBarTheme {
  LAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 20),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 20),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 20),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 20),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
  );
}