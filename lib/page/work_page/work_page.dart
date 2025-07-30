import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../core/utils/app_fonts.dart';


class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    final padding = context.padding();
    final largeStyle = context.largeTextStyle.copyWith(fontSize: 26,fontFamily: AppFonts.poppins);
    final isMobile = r.isMobile;
    return SingleChildScrollView(
      padding: isMobile ? EdgeInsets.zero: EdgeInsets.all(padding),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PORTFOLIO',
            style: largeStyle,
          ),
          const Divider(),
          StaggeredGrid.count(
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            crossAxisCount: isMobile ? 1: 2,
            children: const [

            ],

          ),
        ],
      ),
    );
  }
}
