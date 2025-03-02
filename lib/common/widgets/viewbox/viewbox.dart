import 'package:flutter/material.dart';

import 'package:easy_folio/utils/constants/colors.dart';

class LViewContainer extends StatefulWidget {
  final Widget child;

  const LViewContainer({Key? key, required this.child}) : super(key: key);

  @override
  LViewContainerState createState() => LViewContainerState();
}

class LViewContainerState extends State<LViewContainer> {
  @override
  Widget build(BuildContext context) {
  bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isDarkMode ? LColors.eerieBlack : LColors.white, 
          border: Border.all(
            color: isDarkMode ? LColors.white : Colors.transparent, 
            width: 0.1,
          ),
          borderRadius: BorderRadius.circular(12), 
          boxShadow: [
            BoxShadow(
              color: isDarkMode ? Colors.transparent : LColors.black.withValues(alpha: 0.1), // Color de la sombra
              spreadRadius: 1, 
              blurRadius: 1, 
              offset: Offset(0, 0), 
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.child,
          ],
        ),
      ),
    );
  }
}