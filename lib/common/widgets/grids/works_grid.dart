import 'package:flutter/material.dart';
import 'package:easy_folio/common/widgets/cards/project_card.dart';

import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/utils/constants/image_strings.dart';

class LWorksGrid extends StatelessWidget {
  const LWorksGrid({
    super.key,
    required this.isMobile,
    required this.isDarkMode,
    required this.numberOfItems,
  });

  final bool isMobile;
  final bool isDarkMode;
  final int numberOfItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isMobile
          ? Column(
              children: List.generate(
                numberOfItems, 
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: index == 1 ? 0 : LSizes.spaceBtwItems / 2,
                  ),
                  child: LProjectCard(
                    isDarkMode: isDarkMode,
                    isMobile: isMobile,
                    image: LImages.project,
                    title: 'Project Name',
                    date: '2023 - 2024',
                  ),
                ),
              ),
            )
          : GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: LSizes.spaceBtwItems,
                mainAxisSpacing: LSizes.spaceBtwItems,
                childAspectRatio: 1, 
              ),
              itemCount: numberOfItems, 
              itemBuilder: (context, index) => LProjectCard(
                isDarkMode: isDarkMode,
                isMobile: isMobile,
                image: LImages.project,
                title: 'Project Name',
                date: '2023 - 2024',
              ),
            ),
    );
  }
}
