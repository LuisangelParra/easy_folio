import 'package:easy_folio/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/profile_appbar.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/options_appbar.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/search_theme_appbar.dart';



class LHorizontalAppbar extends StatefulWidget  {
  const LHorizontalAppbar({super.key, required this.appBarHeight, required this.isDarkMode});

  final double appBarHeight;
  final bool isDarkMode;

  @override
  State<LHorizontalAppbar> createState() => _LHorizontalAppbarState();
}

class _LHorizontalAppbarState extends State<LHorizontalAppbar> {
  bool _isMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
                decoration: BoxDecoration(
                  color: widget.isDarkMode ? LColors.eerieBlack : LColors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: widget.isDarkMode ? LColors.white : LColors.black, // Color del borde
                      width: 0.2, // Grosor del borde
                    ),
                  ),
                ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LProfileTileDescription(isCompact: false, useSubTitle: false, isMobile: true),
                  IconButton(
                    icon: Icon(
                      _isMenuOpen ? Icons.close : Icons.menu,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onPressed: () {
                      setState(() {
                        _isMenuOpen = !_isMenuOpen;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 1),
            height: _isMenuOpen ? 500 : 0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.isDarkMode ? LColors.eerieBlack : LColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],

            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LOptionsList(isCompact: false),
                  Divider(
                  color: widget.isDarkMode ? LColors.white.withValues(alpha: 0.06) : LColors.black.withValues(alpha: 0.08),
                    thickness: 1,
                  ),
                  LOptionsSearchandTheme(isDarkMode: widget.isDarkMode, isCompact: false, isMobile: true),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}