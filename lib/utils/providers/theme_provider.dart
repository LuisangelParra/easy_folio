import 'package:flutter/material.dart';

class LThemeProvider extends InheritedWidget {
  final ThemeMode themeMode;
  final VoidCallback toggleTheme;

  LThemeProvider({
    super.key,
    required this.themeMode,
    required this.toggleTheme,
    required Widget child,
  }) : super(child: child);

  static LThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LThemeProvider>();
  }

  @override
  bool updateShouldNotify(LThemeProvider oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}
