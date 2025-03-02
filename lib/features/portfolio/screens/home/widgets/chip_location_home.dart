import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LChipLocation extends StatelessWidget {
  const LChipLocation({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDarkMode ? LColors.raisinBlack : LColors.seasalt, 
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.locationArrow, size: 20, color: isDarkMode ? LColors.white.withValues(alpha: 0.6) : LColors.dimGrey),
              SizedBox(width: LSizes.spaceBtwItems/2),
              Text(
                'Colombia',
                style: Theme.of(context).textTheme.titleLarge!.apply(
                  color: isDarkMode ? LColors.white.withValues(alpha: 0.6) : LColors.dimGrey,
                ).copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}