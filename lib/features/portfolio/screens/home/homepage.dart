import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/features/portfolio/screens/home/widgets/header_home.dart';
import 'package:easy_folio/features/portfolio/screens/home/widgets/selected_work_home.dart';
import 'package:easy_folio/common/widgets/cards/blog_card.dart';


import 'package:easy_folio/utils/constants/image_strings.dart';
import 'package:easy_folio/utils/constants/colors.dart';

class LHomepage extends StatelessWidget {
  const LHomepage({super.key, required this.isMobile, required this.isCompact});

  final bool isMobile;
  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    int numberEntries = 4;
    
    return Padding(
      padding: isMobile
          ? EdgeInsets.symmetric(horizontal: 20, vertical: 40)
          : isCompact
              ? EdgeInsets.symmetric(horizontal: 25, vertical: 40)
              : EdgeInsets.all(80),
      child: Column(
        children: [
          LHeaderHome(isMobile: isMobile, isDarkMode: isDarkMode),
          SizedBox(height: LSizes.spaceBtwSections * 2.5),
          LWorkHome(isMobile: isMobile, isDarkMode: isDarkMode),
          SizedBox(height: LSizes.spaceBtwSections * 2.5),
          SizedBox(
            width: isMobile ? double.infinity : 720,  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Blog',
                  style: Theme.of(context).textTheme.headlineMedium!.apply(
                        color: isDarkMode ? LColors.white : LColors.jet,
                      ).copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: LSizes.spaceBtwSections),
                Column(
                  children: 
                  List.generate(
                    numberEntries,
                    (index) => Column(
                      children: [
                        LBlogItem(
                          isDarkMode: isDarkMode,
                          isMobile: isMobile,
                          date: 'August 2, 2024',
                          title: 'The Future of UX: Embracing AI and Machine Learning',
                          image: '../../../../../${LImages.blog}',
                        ),
                        SizedBox(height: LSizes.spaceBtwSections * 1.5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  


}

