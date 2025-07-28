import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/responsive_util.dart';

class EducationDetail extends StatelessWidget {
  const EducationDetail({
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
        Text('Education', style: context.largeTextStyle),
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
                Text('2023', style: context.smallTextStyle,),
                Text('Flutter Mobile Development',style: context.mediumTextStyle),
                Text('Completed 2 Flutter courses at Udemy.com',style: context.smallTextStyle),

              ],
            ),
          ),
        ),
        ContentView(
          color: isMobile ? Theme.of(context).cardTheme.color: Theme.of(context).scaffoldBackgroundColor,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.all(
                context.defaultResponsive(mobile: 16, tablet: 20, desktop: 22)),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2022', style: context.smallTextStyle,),
                Text('Flutter Mobile Development',style: context.mediumTextStyle),
                Text('Study at Center of Science and Technology Advanced Development - CSTAD',style: context.smallTextStyle),
              ],
            ),
          ),
        ),
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
                Text('2019-2023', style: context.smallTextStyle,),
                Text('Bachelor Degree of Computer Science',style: context.mediumTextStyle),
                Text('Study at Royal University of Phnom Penh, Phnom Penh, Cambodia',style: context.smallTextStyle),
              ],
            ),
          ),
        ),
      ],
    );
  }
}