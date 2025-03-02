import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/utils/constants/image_strings.dart';


class LProfileTileDescription extends StatelessWidget {
  const LProfileTileDescription({
    super.key,
    required this.isCompact,
    required this.useSubTitle,
    required this.isMobile,
  });

  final bool isCompact;
  final bool useSubTitle;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: isMobile ? 200 : double.infinity,
      child: Padding(
        padding: (isCompact ? EdgeInsets.zero : EdgeInsets.all(8.0)),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('../../../../../${LImages.profile}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (!isCompact) ...[
                SizedBox(width: LSizes.spaceBtwItems),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Luisangel Parra',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDarkMode? LColors.white : LColors.jet,
                      ).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (useSubTitle) ...[
                      Text(
                        'Systems Engineer',
                        style: Theme.of(context).textTheme.bodySmall!.apply(
                          color: isDarkMode? LColors.white.withAlpha(154) : LColors.dimGrey,
                        ).copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]
                  ],
                ),   
            ],
            
          ],
        ),
      ),
    );
  }
}
