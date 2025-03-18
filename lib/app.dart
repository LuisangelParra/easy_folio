import 'package:flutter/material.dart';
import 'package:easy_folio/utils/theme/theme.dart';
import 'package:easy_folio/utils/providers/theme_provider.dart';
import 'package:easy_folio/utils/providers/view_provider.dart';
import 'package:easy_folio/common/widgets/appbar/appbar.dart';
import 'package:easy_folio/common/widgets/viewbox/viewbox.dart';

import 'package:easy_folio/features/portfolio/screens/home/homepage.dart';


class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Inicializamos el valor del themeMode con el tema claro como predeterminado
  ThemeMode _themeMode = ThemeMode.light;

  // Inicializamos el valor del viewIndex con 0 como predeterminado
  final ValueNotifier<int> _viewIndex = ValueNotifier<int>(0);

  final GlobalKey<LViewContainerState> _viewContainerKey = GlobalKey<LViewContainerState>();

  // Método para cambiar el tema
  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  Widget _getView(int index, bool isMobile, bool isCompact) {
    switch (index) {
      case 0:
        return LHomepage(isMobile: isMobile, isCompact: isCompact);
      case 1:
        return Text('Vista 2', style: TextStyle(fontSize: 24));
      case 2:
        return Text('Vista 3', style: TextStyle(fontSize: 24));
      case 3:
        return Text('Vista 4', style: TextStyle(fontSize: 24));
      case 4:
        return Text('Vista 5', style: TextStyle(fontSize: 24));
      default:
        return Text('Vista 1', style: TextStyle(fontSize: 24));
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isCompact = screenWidth < 1158 ? true : false;
    bool isMobile = screenWidth < 818 ? true : false;
    return LThemeProvider(
      themeMode: _themeMode,
      toggleTheme: _toggleTheme,
      child: LViewProvider(
        viewIndex: _viewIndex,
        child: MaterialApp(
          themeMode: _themeMode,
          debugShowCheckedModeBanner: false,
          theme: LAppTheme.lightTheme,
          darkTheme: LAppTheme.darkTheme,
          home: Scaffold(
            body: isMobile
                ? Stack(
                    children: [
                      Positioned.fill(
                        top: 80,
                        child: SingleChildScrollView(
                          child: ValueListenableBuilder<int>(
                            valueListenable: _viewIndex,
                            builder: (context, index, child) {
                              return LViewContainer(
                                key: _viewContainerKey,
                                child: _getView(index, isMobile, isCompact),
                              );
                            },
                          ),
                        ),
                      ),
                      LAppBar(isCompact: isCompact, isMobile: isMobile),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LAppBar(isCompact: isCompact, isMobile: isMobile),
                      Expanded(child: 
                        SingleChildScrollView(
                          child: ValueListenableBuilder<int>(
                              valueListenable: _viewIndex,
                              builder: (context, index, child) {
                                return LViewContainer(
                                  key: _viewContainerKey,
                                  child: _getView(index, isMobile, isCompact),
                                );
                              },
                            ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

