import 'package:flutter/material.dart';
import 'package:easy_folio/utils/device/device_utility.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/vertical_appbar.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/horizontal_appbar.dart';
class LAppBar extends StatefulWidget implements PreferredSizeWidget {
  const LAppBar({super.key, required this.isCompact, required this.isMobile});

  final bool isCompact;
  final bool isMobile;

  @override
  State<LAppBar> createState() => _LAppBarState();

  @override
  Size get preferredSize => Size.fromWidth(TDevicesUtils.getAppBarWidth());
}

class _LAppBarState extends State<LAppBar>  {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    double appBarWidth = widget.isCompact ? 80 : TDevicesUtils.getAppBarWidth();
    double appBarHeight = TDevicesUtils.getAppBarHeight();

    if (widget.isMobile) {
      return LHorizontalAppbar(appBarHeight:appBarHeight, isDarkMode: isDarkMode);
    } else {
      return LVerticalAppbar(appBarWidth: appBarWidth, isCompact: widget.isCompact, isDarkMode: isDarkMode);
    }
  }
}





