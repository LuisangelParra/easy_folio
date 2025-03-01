import 'package:flutter/material.dart';
import 'package:easy_folio/utils/theme/theme.dart';
import 'package:easy_folio/utils/theme/theme_provider.dart';
import 'package:easy_folio/common/widgets/appbar/appbar.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Inicializamos el valor del themeMode con el tema claro como predeterminado
  ThemeMode _themeMode = ThemeMode.light;

  // Método para cambiar el tema
  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LThemeProvider(
      themeMode: _themeMode,
      toggleTheme: _toggleTheme,
      child: MaterialApp(
        themeMode: _themeMode,
        theme: LAppTheme.lightTheme,
        darkTheme: LAppTheme.darkTheme,
        home: Scaffold(
          body: Center(
            child: Row(
              children: [
                LAppBar(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
