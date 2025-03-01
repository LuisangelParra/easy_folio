import 'package:flutter/material.dart';
import 'package:easy_folio/utils/constants/sizes.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/navlink_appbar.dart';

import 'package:easy_folio/utils/constants/colors.dart';

import "package:iconsax/iconsax.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LOptionsList extends StatefulWidget {
  const LOptionsList({
    super.key,
    required this.isCompact,
  });

  final bool isCompact;

  @override
  State<LOptionsList> createState() => _LOptionsListState();
}

class _LOptionsListState extends State<LOptionsList> {

  int selectedIndex = 0; // Índice del nav seleccionado

  void _onNavItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LNavLink(
                          index: 0,
                          selectedIndex: selectedIndex,
                          title: (widget.isCompact ? null : 'Home'),
                          leadingIcon: Iconsax.home,
                          onPressed: _onNavItemSelected,
                          isCompact: widget.isCompact,
                        ),
                        SizedBox(height: LSizes.sm/2),
                        LNavLink(
                          index: 1,
                          selectedIndex: selectedIndex,
                          title: (widget.isCompact ? null : 'Projects'),
                          leadingIcon: Iconsax.folder_open,
                          onPressed: _onNavItemSelected,
                          isCompact: widget.isCompact,
                        ),
                        SizedBox(height: LSizes.sm/2),
                        LNavLink(
                          index: 2,
                          selectedIndex: selectedIndex,
                          title: (widget.isCompact ? null : 'About'),
                          leadingIcon: Iconsax.user,
                          onPressed: _onNavItemSelected,
                          isCompact: widget.isCompact,
                        ),
                        SizedBox(height: LSizes.sm/2),
                        LNavLink(
                          index: 3,
                          selectedIndex: selectedIndex,
                          title: (widget.isCompact ? null : 'Blog'),
                          leadingIcon: Iconsax.pen_tool,
                          onPressed: _onNavItemSelected,
                          isCompact: widget.isCompact,
                        ),
                        SizedBox(height: LSizes.sm/2),
                        LNavLink(
                          index: 4,
                          selectedIndex: selectedIndex,
                          title: (widget.isCompact ? null : 'Contact'),
                          leadingIcon: Iconsax.message_square,
                          onPressed: _onNavItemSelected,
                          isCompact: widget.isCompact,
                        ),
                      ],
                    ),

        SizedBox(height: LSizes.spaceBtwItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!widget.isCompact) ...[
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Social',
                          style: Theme.of(context).textTheme.labelLarge!.apply(
                            color: isDarkMode? LColors.white.withAlpha(102) : LColors.slateGrey,
                          ).copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: LSizes.sm/2),
                    ],
                    LNavLink(
                      selectedIndex: selectedIndex,
                      title: (widget.isCompact ? null : 'LinkedIn'),
                      leadingIcon: FontAwesomeIcons.linkedin,
                      onPressed: _onNavItemSelected,
                      isCompact: widget.isCompact,
                    ),
                    SizedBox(height: LSizes.sm/2),
                    LNavLink(
                      selectedIndex: selectedIndex,
                      title: (widget.isCompact ? null : 'Github'),
                      leadingIcon: FontAwesomeIcons.github,
                      onPressed: _onNavItemSelected,
                      isCompact: widget.isCompact,
                    ),
                    SizedBox(height: LSizes.sm/2),
                    LNavLink(
                      selectedIndex: selectedIndex,
                      title: (widget.isCompact ? null : 'Instagram'),
                      leadingIcon: FontAwesomeIcons.instagram,
                      onPressed: _onNavItemSelected,
                      isCompact: widget.isCompact,
                    ),
                  ],
                )
      ],
    );
  }
}