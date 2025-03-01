import 'package:flutter/material.dart';
import 'package:easy_folio/utils/device/device_utility.dart';
import 'package:easy_folio/common/widgets/appbar/widgets/vertical_appbar.dart';
class LAppBar extends StatefulWidget implements PreferredSizeWidget {
  const LAppBar({super.key});

  @override
  State<LAppBar> createState() => _LAppBarState();

  @override
  Size get preferredSize => Size.fromWidth(TDevicesUtils.getAppBarWidth());
}

class _LAppBarState extends State<LAppBar>  {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    double screenWidth = MediaQuery.of(context).size.width;
    bool isCompact = screenWidth < 1158 ? true : false;
    bool isMobile = screenWidth < 818 ? true : false;

    double appBarWidth = isCompact ? 80 : TDevicesUtils.getAppBarWidth();

    if (isMobile) {
      return Container();
    } else {
      return LVerticalAppbar(appBarWidth: appBarWidth, isCompact: isCompact, isDarkMode: isDarkMode);
    }
  }
}





