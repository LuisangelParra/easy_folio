import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';
import 'package:easy_folio/utils/constants/sizes.dart';


class LProjectCard extends StatelessWidget {
  const LProjectCard({super.key, required this.isDarkMode, required this.isMobile, required this.image, required this.title, required this.date});

  final bool isDarkMode;
  final bool isMobile;
  final String image;
  final String title;
  final String date;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 332,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260, // Ajustado para dejar espacio para el texto
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('../../../../$image'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: LSizes.spaceBtwItems),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDarkMode ? LColors.white : LColors.jet,
                ).copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: LSizes.sm),
          Text(
            date,
            style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDarkMode ? LColors.white.withValues(alpha: 0.6) : LColors.dimGrey,
                ).copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}