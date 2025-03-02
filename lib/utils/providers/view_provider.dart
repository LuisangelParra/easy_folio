import 'package:flutter/material.dart';

class LViewProvider extends InheritedWidget {
  final ValueNotifier<int> viewIndex;

  LViewProvider({
    required this.viewIndex, 
    required Widget child
  }) : super(child: child);

  static LViewProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LViewProvider>();
  }

  @override
  bool updateShouldNotify(LViewProvider oldWidget) => viewIndex != oldWidget.viewIndex;
}