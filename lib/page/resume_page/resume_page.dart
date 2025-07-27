

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../core/utils/responsive_util.dart';
import '../home_page/widget/what_i_can_do_card_item.dart';
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
            crossAxisCount: isMobile ? 1: 2,
            children: const [
              EducationDetail(),
              ExperienceDetail()
            ],

          ),
        ],
      ),
    );
  }
}
