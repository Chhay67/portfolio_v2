import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/core/utils/app_fonts.dart';
import 'package:portfolio_v2/core/utils/responsive_util.dart';

import '../../../core/theme/shape.dart';

class WhatICanDoCardItem extends StatelessWidget {
  const WhatICanDoCardItem({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    return Card(
      elevation: 0,
      shape: AppShapes.roundedRectangleBorder,
      color:isMobile ? Theme.of(context).cardTheme.color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: context.defaultResponsive(mobile: 16,tablet: 20,desktop: 22),
          vertical:context.defaultResponsive(mobile: 8,tablet: 10,desktop: 12),
        ),
        child: Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,style: context.largeTextStyle.copyWith(fontFamily: AppFonts.poppins),),
            Text(description,style: context.smallTextStyle,),
          ],
        ),
      ),
    );
  }
}
