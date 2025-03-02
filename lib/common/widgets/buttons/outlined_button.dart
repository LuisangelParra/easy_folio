import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';

class LOutlinedButton extends StatelessWidget {
  const LOutlinedButton({
    super.key,
    required this.isDarkMode,
    required this.isMobile,
    required this.text,
    required this.onPressed,
    this.icon,

  });


  final bool isDarkMode;
  final bool isMobile;
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
      },
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size(isMobile ? double.infinity : 142, 55)), // Tamaño mínimo del botón
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.pressed)) {
            return BorderSide(color:  isDarkMode ? LColors.white.withValues(alpha: 0.24) :  LColors.frenchGray);
          } else if (states.contains(WidgetState.hovered)) {
            return BorderSide(color:  isDarkMode ? LColors.white.withValues(alpha: 0.32) :  LColors.cadetGray.withValues(alpha: 0.9));
          }
          return BorderSide(color: isDarkMode ? LColors.white.withValues(alpha: 0.12) :  LColors.frenchGray.withValues(alpha: 0.7), width: 1.5); 
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Bordes redondeados
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 20, color: isDarkMode ? LColors.white.withValues(alpha: 0.40)  : LColors.slateGrey),
            SizedBox(width: 8), // Espacio entre el ícono y el texto
          ],
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall!.apply(
              color: isDarkMode ? LColors.white  : LColors.jet,
            ).copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}