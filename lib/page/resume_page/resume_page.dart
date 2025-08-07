

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/resume_page/soft_skills.dart';
import 'package:portfolio_v2/page/resume_page/work_skills.dart';

import '../../core/utils/app_fonts.dart';
import 'education_detail.dart';
import 'experience_detail.dart';


class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    final padding = context.padding();
    final largeStyle = context.largeTextStyle.copyWith(fontSize: 26,fontFamily: AppFonts.poppins);
    final isMobile = r.isMobile;
    final theme = Theme.of(context);
    final smallStyle = context.smallTextStyle;
    final mediumStyle = context.mediumTextStyle;
    final largeStyle2 = context.largeTextStyle;
    return SingleChildScrollView(
      padding: isMobile ? EdgeInsets.zero: EdgeInsets.all(padding),
      physics: const BouncingScrollPhysics(),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RESUME',
            style: largeStyle,
          ),
          const Divider(),
          StaggeredGrid.count(
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            crossAxisCount: isMobile ? 1: 2,
            children:  [
              EducationDetail(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                smallStyle: smallStyle,
                largeStyle: largeStyle2,
                padding: padding,
                mediumStyle: mediumStyle,
              ),
              ExperienceDetail(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                smallStyle: smallStyle,
                largeStyle: largeStyle2,
                padding: padding,
                mediumStyle: mediumStyle,
              ),
              WorkSkills(
                smallStyle: smallStyle,
                largeStyle: largeStyle2,
              ),
              SoftSkills(
                smallStyle: smallStyle,
                largeStyle: largeStyle2,
              ),
            ],

          ),
        ],
      ),
    );
  }
}
