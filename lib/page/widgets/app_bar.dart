

import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/core/utils/responsive_util.dart';

import '../../core/mixin/padding_mixin.dart';
import 'gradient_button.dart';

class MyAppBar extends StatelessWidget with ValueMixin implements PreferredSizeWidget{

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
    final responsive = ResponsiveUtil(context);
    return Container(
      margin: EdgeInsets.only(top:padding(context)),
      padding: EdgeInsets.symmetric(horizontal:context.defaultResponsive()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(responsive.isMobile)
            IconButton.outlined(onPressed: onClickDrawer, icon: const Icon(Icons.menu,)),
          if(!responsive.isMobile)
          IconButton.outlined(onPressed: onThemeChange, icon: const Icon(Icons.dark_mode,)),
          GradientButton(
            onPressed: onDownloadResume,
            padding: EdgeInsets.symmetric(
              horizontal: context.defaultResponsive(mobile: 16,tablet: 20,desktop: 24),
              vertical: context.defaultResponsive(mobile: 8, tablet: 12,desktop:  16),
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