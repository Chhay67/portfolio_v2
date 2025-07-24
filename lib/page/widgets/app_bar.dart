

import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../core/mixin/padding_mixin.dart';
import 'gradient_button.dart';

class MyAppBar extends StatelessWidget with ValueMixin implements PreferredSizeWidget{

  final Function() onThemeChange;
  final Function() onDownloadResume;
  const MyAppBar({
    super.key,
    required this.onThemeChange,
    required this.onDownloadResume,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:padding(context)),
      padding: EdgeInsets.symmetric(horizontal:context.defaultResponsive()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton.outlined(onPressed: onThemeChange, icon: const Icon(Icons.dark_mode,)),
          GradientButton(
            onPressed: onDownloadResume,
            child: Row(
              spacing: 10,
              children: [
                const Icon(Icons.download_outlined,color: Colors.white,),
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