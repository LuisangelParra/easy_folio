import 'package:flutter/material.dart';
import 'package:easy_folio/common/widgets/grids/works_grid.dart';

import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';


class LWorkHome extends StatelessWidget {
  const LWorkHome({
    super.key,
    required this.isMobile,
    required this.isDarkMode,
  });

  final bool isMobile;
  final bool isDarkMode;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMobile ? double.infinity : 720,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Work',
            style: Theme.of(context).textTheme.headlineMedium!.apply(
                  color: isDarkMode ? LColors.white : LColors.jet,
                ).copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: LSizes.spaceBtwSections),
          LWorksGrid(isMobile: isMobile, isDarkMode: isDarkMode, numberOfItems: 2),
        ],
      ),
    );
  }
}
