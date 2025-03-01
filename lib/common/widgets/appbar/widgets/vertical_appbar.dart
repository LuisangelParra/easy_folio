import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/profile_appbar.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/search_theme_appbar.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/options_appbar.dart';


class LVerticalAppbar extends StatelessWidget {
  const LVerticalAppbar({
    super.key,
    required this.appBarWidth,
    required this.isCompact,
    required this.isDarkMode,
  });

  final double appBarWidth;
  final bool isCompact;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: appBarWidth,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(LSizes.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LProfileTileDescription(isCompact: isCompact),
                SizedBox(height: LSizes.spaceBtwItems),
                // AppBar options
                LOptionsList(isCompact: isCompact),
              ],
            ),
            LOptionsSearchandTheme(isDarkMode: isDarkMode, isCompact: isCompact),
          ],
        ),
      ),
    );
  }
}