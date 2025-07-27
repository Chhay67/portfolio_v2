import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/resume_page/widget/time_line_item.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/responsive_util.dart';

class EducationDetail extends StatelessWidget {
  const EducationDetail({
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
                  Text('Education', style: context.largeTextStyle),
                  const SizedBox(height: 10),
                  const TimeLineItem(
                    title: 'Flutter Mobile Development',
                    description: '2023 Completed 2 Flutter courses at Udemy.com',
                  ),
                  const TimeLineItem(
                    title: 'Flutter Mobile Development',
                    description: '2022 at Center of Science and Technology Advanced Development - CSTAD',
                  ),
                  const TimeLineItem(
                    title: 'Bachelor Degree of Computer Science',
                    description: '2019 to 2023 at Royal University of Phnom Penh, Phnom Penh, Cambodia',
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