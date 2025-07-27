

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/resume_page/widget/time_line_item.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/responsive_util.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    return ContentView(
      color: isMobile ? Theme.of(context).cardTheme.color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(
            context.defaultResponsive(mobile: 16, tablet: 20, desktop: 22)),
        child: Row(
          children: [
            Flexible(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Experience',
                      style: context.largeTextStyle,
                      ),
                  const TimeLineItem(
                    title: 'Flutter Developer at Polygram Solutions',
                    description: 'currently',
                  ),
                  const TimeLineItem(
                    title: 'Flutter Developer at Polygram Solutions',
                    description: 'currently',
                    isLastChild: true,
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}