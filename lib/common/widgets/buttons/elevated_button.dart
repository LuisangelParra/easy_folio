import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';

class LElevatedButton extends StatelessWidget {
  const LElevatedButton({
    super.key,
    required this.isDarkMode,
    required this.isMobile,
    required this.text,
    required this.onPressed,
  });

  final bool isDarkMode;
  final bool isMobile;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size(isMobile ? double.infinity : 80, 55)), 
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.pressed)) {
            return isDarkMode? LColors.white.withValues(alpha: 0.22) : LColors.zaffre; 
          }else if (states.contains(WidgetState.hovered)) {
            return isDarkMode?  LColors.white.withValues(alpha: 0.18) : LColors.majorelleBlue; 
          }
          return  isDarkMode? LColors.white.withValues(alpha: 0.14) : LColors.jet; 
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevation: WidgetStateProperty.all(4),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall!.apply(
          color: LColors.white,
        ).copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}