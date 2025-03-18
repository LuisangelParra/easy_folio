import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/utils/constants/colors.dart';

class LBlogItem extends StatelessWidget {
  const LBlogItem({
    super.key,
    required this.isDarkMode,
    required this.isMobile,
    required this.date,
    required this.title,
    required this.image,
  });

  final bool isDarkMode;
  final bool isMobile;
  final String date;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildImage(double.infinity, 350),
              const SizedBox(height: 12),
              _buildTextContent(context),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildTextContent(context),
              ),
              const SizedBox(width: 20),
              _buildImage(160, 160),
            ],
          );
  }

  /// Contenido de texto (Fecha, Título, Botón y Línea divisoria)
  Widget _buildTextContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: Theme.of(context).textTheme.bodySmall!.apply(
                color: isDarkMode ? LColors.white.withValues(alpha: 0.4) : LColors.slateGrey,
              ).copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: isDarkMode ? LColors.white : LColors.jet,
              ).copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: LSizes.spaceBtwItems),
        Divider(
          color: isDarkMode ? LColors.white.withValues(alpha: 0.06) : LColors.black.withValues(alpha: 0.08),
          thickness: 1,
        ),
        const SizedBox(height: LSizes.spaceBtwItems),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(40, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: LSizes.sm),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Read',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDarkMode ? LColors.white : LColors.jet,
                  ),
                ),
                const SizedBox(width: LSizes.spaceBtwItems),
                Icon(Icons.arrow_forward, size: 16, color: isDarkMode ? LColors.white : LColors.jet),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Imagen del blog
  Widget _buildImage(double width, double height) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        image,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
