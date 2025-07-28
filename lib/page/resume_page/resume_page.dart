

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/resume_page/soft_skills.dart';
import 'package:portfolio_v2/page/resume_page/work_skills.dart';

import '../../core/utils/responsive_util.dart';
import 'education_detail.dart';
import 'experience_detail.dart';


class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    return SingleChildScrollView(
      padding: EdgeInsets.all(
          context.defaultResponsive(mobile: 16, tablet: 20, desktop: 22)),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RESUME',
            style: context.largeTextStyle.copyWith(fontSize: 32),
          ),
          const Divider(),
          StaggeredGrid.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: isMobile ? 1: 2,
            children: const [
              EducationDetail(),
              ExperienceDetail(),
              WorkSkills(),
              SoftSkills(),
            ],

          ),
        ],
      ),
    );
  }
}
