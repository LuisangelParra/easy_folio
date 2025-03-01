import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';


class LNavLink extends StatefulWidget {
  const LNavLink({
    super.key,
    this.index,
    required this.selectedIndex,
    this.title,
    required this.leadingIcon,
    required this.onPressed,
    required this.isCompact,
  });

  final int? index;
  final int selectedIndex;
  final String? title;
  final IconData leadingIcon;
  final Function(int) onPressed;
  final bool isCompact;

  @override
  _LNavLinkState createState() => _LNavLinkState();
}

class _LNavLinkState extends State<LNavLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.index == widget.selectedIndex;
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: () {
        if (widget.index != null) {
          widget.onPressed(widget.index!);
        }
      }, // Maneja el clic
      splashColor: isSelected ? (isDarkMode ? LColors.white.withAlpha(51) : LColors.frenchGray.withAlpha(102)) : (isDarkMode ? LColors.white.withAlpha(51) : LColors.frenchGray.withAlpha(102)),
      borderRadius: BorderRadius.circular(12),
      hoverColor: isSelected ? (isDarkMode ? LColors.white.withAlpha(20) : LColors.frenchGray.withAlpha(33)) : (isDarkMode ? LColors.white.withAlpha(20) : LColors.frenchGray.withAlpha(33)),
      child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
        child: Container(
          width: double.infinity,
          height: widget.isCompact ? 48 : 40,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: isSelected ? (isDarkMode ? LColors.white.withAlpha(36) : LColors.frenchGray.withAlpha(51)) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: widget.isCompact ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Icon(
                widget.leadingIcon,
                color: isSelected
                    ? (isDarkMode ? LColors.white : LColors.jet)
                    : (isDarkMode ? LColors.white.withAlpha(102) : LColors.slateGrey),
                size: 20,
              ),
                  if (!widget.isCompact) ...[
                    SizedBox(width: LSizes.spaceBtwItems),
                    Text(
                      widget.title ?? '',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: isSelected
                                ? (isDarkMode ? LColors.white : LColors.jet)
                                : (isDarkMode ? LColors.white.withAlpha(154) : (_isHovered ? LColors.jet : LColors.dimGrey)),
                          ).copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                  
                
            ],
          ),
        ),
      ),
    );
  }
}
