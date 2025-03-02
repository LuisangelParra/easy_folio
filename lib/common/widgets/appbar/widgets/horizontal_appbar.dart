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
                  border: Border(
                    bottom: BorderSide(
                      color: LColors.black, // Color del borde
                      width: 0.1, // Grosor del borde
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
            height: _isMenuOpen ? 490 : 0,
            width: double.infinity,
            color: widget.isDarkMode ? LColors.eerieBlack : LColors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LOptionsList(isCompact: false),
                  Divider(
                    color: LColors.black,
                    thickness: 0.1,
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