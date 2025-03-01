import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/utils/constants/image_strings.dart';


class LProfileTileDescription extends StatelessWidget {
  const LProfileTileDescription({
    super.key,
    required this.isCompact,
  });

  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: double.infinity,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Luisangel Parra,',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDarkMode? LColors.white : LColors.jet,
                      ).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Systems Engineer',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: isDarkMode? LColors.white.withAlpha(154) : LColors.dimGrey,
                      ).copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),   
            ],
            
          ],
        ),
      ),
    );
  }
}
