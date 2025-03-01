import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/theme/theme_provider.dart';


import "package:iconsax/iconsax.dart";

class LOptionsSearchandTheme extends StatelessWidget {
  const LOptionsSearchandTheme({
    super.key,
    required this.isDarkMode,
    required this.isCompact,
  });

  final bool isDarkMode;
  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isCompact 
      ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              LThemeProvider.of(context)?.toggleTheme();
            },
            icon: Icon(
              (isDarkMode ? Iconsax.moon : Iconsax.sun_1),
              color: isDarkMode? LColors.white.withAlpha(102) : LColors.slateGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.search_normal_1,
              color: isDarkMode? LColors.white.withAlpha(102) : LColors.slateGrey,
            ),
          ),
        ],
      )

      : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              LThemeProvider.of(context)?.toggleTheme();
            },
            icon: Icon(
              (isDarkMode ? Iconsax.moon : Iconsax.sun_1),
              color: isDarkMode? LColors.white.withAlpha(102) : LColors.slateGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.search_normal_1,
              color: isDarkMode? LColors.white.withAlpha(102) : LColors.slateGrey,
            ),
          ),
        ],
      ),
    );
  }
}

