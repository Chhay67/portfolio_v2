import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/responsive_util.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      spacing: 10,
      children: [
        Text('Experience', style: context.largeTextStyle),
        ContentView(
          width: double.maxFinite,
          color: isMobile ? Theme.of(context).cardTheme.color: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: EdgeInsets.all(
                context.defaultResponsive(mobile: 16, tablet: 20, desktop: 22)),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Present', style: context.smallTextStyle,),
                Text('Working at Polygram Solutions',style: context.mediumTextStyle),
                Text('Mobile Development using Flutter Framework',style: context.smallTextStyle),

              ],
            ),
          ),
        ),
      ],
    );
  }
}