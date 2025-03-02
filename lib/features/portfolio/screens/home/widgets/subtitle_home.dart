import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/colors.dart';

class LSubTitleHome extends StatelessWidget {
  const LSubTitleHome({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Software Engineer',
      style: Theme.of(context).textTheme.headlineLarge!.apply(
        color: isDarkMode? LColors.tropicalIndigo : LColors.majorelleBlue,
      ).copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}