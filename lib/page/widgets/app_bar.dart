

import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import 'gradient_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{

  final Function() onThemeChange;
  final Function() onDownloadResume;
  final Function() onClickDrawer;
  const MyAppBar({
    super.key,
    required this.onThemeChange,
    required this.onDownloadResume,
    required this.onClickDrawer,
  });


  @override
  Widget build(BuildContext context) {
    final isMobile = context.responsive.isMobile;
    return Container(
      margin: EdgeInsets.only(top:context.margin()),
      padding: EdgeInsets.symmetric(horizontal:context.padding(desktop: 80)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(isMobile)
            IconButton.outlined(onPressed: onClickDrawer, icon: const Icon(Icons.menu,)),
          if(!isMobile)
          IconButton.outlined(onPressed: onThemeChange, icon: const Icon(Icons.dark_mode,)),
          GradientButton(
            onPressed: onDownloadResume,
            padding: EdgeInsets.symmetric(
              horizontal: context.padding(mobile: 16,tablet: 20,desktop: 24),
              vertical: context.padding(mobile: 8, tablet: 12,desktop:  16),
            ),
            child: Row(
              spacing: 10,
              children: [
                const Icon(Icons.download_outlined,color: Colors.white),
                Text('Download Resume',style: context.mediumTextStyle.copyWith(fontWeight: FontWeight.normal,color: Colors.white),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200);
}