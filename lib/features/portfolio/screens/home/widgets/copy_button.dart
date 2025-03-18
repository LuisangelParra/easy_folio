import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class LCopyButton extends StatefulWidget {
  const LCopyButton({
    super.key,
    required this.isDarkMode,
    required this.isMobile,
    required this.textToCopy,
  });

  final bool isDarkMode;
  final bool isMobile;
  final String textToCopy;

  @override
  _LCopyButtonState createState() => _LCopyButtonState();
}

class _LCopyButtonState extends State<LCopyButton> {
  bool _copied = false;

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: widget.textToCopy));

    setState(() {
      _copied = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _copied = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: widget.isDarkMode
              ? LColors.white.withOpacity(0.24)
              : LColors.frenchGray,
          width: 1.5,
        ),
        color: _copied ? LColors.malachite.withOpacity(0.16) : Colors.transparent,
      ),
      child: OutlinedButton(
        onPressed: _copyToClipboard,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
          minimumSize: WidgetStateProperty.all(Size(widget.isMobile ? double.infinity : 142, 50)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          side: WidgetStateProperty.all(BorderSide.none),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ícono fijo (NO animado)
            Icon(
              _copied ? Icons.check : Iconsax.copy,
              size: 20,
              color: _copied
                  ? LColors.seaGreen
                  : (widget.isDarkMode ? LColors.white.withOpacity(0.40) : LColors.slateGrey),
            ),
            SizedBox(width: LSizes.spaceBtwItems / 2),

            // Contenedor de texto con ancho fijo para evitar movimiento
            SizedBox(
              width: 90, // Ajusta este valor para que el texto siempre encaje bien
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 0.5), // Inicia un poco abajo
                      end: Offset.zero,
                    ).animate(animation),
                    child: FadeTransition(opacity: animation, child: child),
                  );
                },
                child: Text(
                  _copied ? "Copied" : "Copy email",
                  key: ValueKey<bool>(_copied),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: widget.isDarkMode ? LColors.white : LColors.jet,
                      ).copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
