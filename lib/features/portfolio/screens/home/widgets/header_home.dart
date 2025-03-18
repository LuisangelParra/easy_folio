import 'package:flutter/material.dart';
import 'package:easy_folio/features/portfolio/screens/home/widgets/chip_location_home.dart';
import 'package:easy_folio/features/portfolio/screens/home/widgets/subtitle_home.dart';
import 'package:easy_folio/common/widgets/buttons/elevated_button.dart';
import 'package:easy_folio/features/portfolio/screens/home/widgets/copy_button.dart';

import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/utils/constants/colors.dart';


class LHeaderHome extends StatelessWidget {
  const LHeaderHome({
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
            'Hello! I’m Luis',
            style: Theme.of(context).textTheme.headlineLarge!.apply(
              color: isDarkMode? LColors.white : LColors.jet,
            ).copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (!isMobile) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Name and Title
                LSubTitleHome(isDarkMode: isDarkMode),
                SizedBox(width: LSizes.spaceBtwItems),
                LChipLocation(isDarkMode: isDarkMode),
              ],
            ),
          ],
          if (isMobile) ...[
            LSubTitleHome(isDarkMode: isDarkMode),
            LChipLocation(isDarkMode: isDarkMode),
          ],
          SizedBox(height: LSizes.spaceBtwItems*1.5),
          // Description
          Container(
            child: Text(
              'Systems and Computer Engineering student with expertise in hardware architecture, operating systems, and DevOps. Fluent in English, German, and Spanish, with a strong academic record. Experienced in leading software development teams in healthcare, AI, and cybersecurity.',
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                color: isDarkMode? LColors.white.withValues(alpha: 0.6) : LColors.dimGrey,
              ).copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: LSizes.spaceBtwItems*1.5),
          // Buttons
          isMobile 
            ? 
            Column(
              children: [
                LElevatedButton(isDarkMode: isDarkMode, isMobile: isMobile, text: 'About', onPressed: () {}),
                SizedBox(height: LSizes.spaceBtwItems),
                LCopyButton(isDarkMode: isDarkMode, isMobile: isMobile, textToCopy: "lfaria@uninorte.edu.co",),
              ],
            ) 
            : 
            Row(
              children: [
                LElevatedButton(isDarkMode: isDarkMode, isMobile: isMobile, text: 'About', onPressed: () {}),
                SizedBox(width: LSizes.spaceBtwItems),
                LCopyButton(isDarkMode: isDarkMode, isMobile: isMobile, textToCopy: "lfaria@uninorte.edu.co",),
              ],
            ),
        ],
      ),
    );
  }
}