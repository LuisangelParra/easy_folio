import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/features/portfolio/screens/home/widgets/header_home.dart';
import 'package:easy_folio/utils/constants/image_strings.dart';
import 'package:easy_folio/utils/constants/colors.dart';

class LHomepage extends StatelessWidget {
  const LHomepage({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: isMobile ? EdgeInsets.symmetric(horizontal: 20, vertical: 40) : EdgeInsets.all(80),
      child: Column(
        children: [
          LHeaderHome(isMobile: isMobile, isDarkMode: isDarkMode),
          SizedBox(height: LSizes.spaceBtwSections * 2.5),
          SizedBox(
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
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isMobile ? 1 : 2,
                    crossAxisSpacing: LSizes.spaceBtwItems,
                    mainAxisSpacing: LSizes.spaceBtwItems,
                    childAspectRatio: 1, // Ajusta esto si es necesario
                  ),
                  itemCount: 2, // Número de proyectos
                  itemBuilder: (context, index) => _buildProjectCard(context, isDarkMode),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(BuildContext context, bool isDarkMode) {
    return SizedBox(
      height: 348,
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
                image: AssetImage('../../../../../${LImages.project}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: LSizes.spaceBtwItems),
          Text(
            'Project Name',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDarkMode ? LColors.white : LColors.jet,
                ).copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
