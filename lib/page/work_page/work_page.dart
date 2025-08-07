import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/core/utils/app_images.dart';
import 'package:portfolio_v2/page/work_page/widget/portfolio_card.dart';

import '../../core/constants/url_constants.dart';
import '../../core/utils/app_fonts.dart';


class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    final padding = context.padding();
    final largeStyle = context.largeTextStyle.copyWith(fontSize: 26,fontFamily: AppFonts.poppins);
    final mediumStyle = context.mediumTextStyle;
    final smallStyle = context.smallTextStyle;
    final isMobile = r.isMobile;
    final theme = Theme.of(context);
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
            children:  [
              PortfolioCard(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                title: 'App Development',
                description: 'Sushi App',
                padding: padding,
                mediumStyle: mediumStyle,
                smallStyle:smallStyle ,
              ),
              PortfolioCard(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                title: 'Web Development',
                description: 'Railways website',
                padding: padding,
                height: 130,
                mediumStyle: mediumStyle,
                smallStyle:smallStyle ,
              ),
              PortfolioCard(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                title: 'App Development',
                description: 'Shopping App',
                padding: padding,
                height: 115,
                mediumStyle: mediumStyle,
                smallStyle:smallStyle ,
              ),
              PortfolioCard(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                title: 'App Development',
                description: 'Library App',
                padding: padding,
                height: 90,
                mediumStyle: mediumStyle,
                smallStyle:smallStyle ,
              ),
              PortfolioCard(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                title: 'Android Development',
                description: 'Notes App',
                padding: padding,
                isAssetImage: true,
                height: 256,
                imageUrl: AppImages.notesAppBgImg,
                mediumStyle: mediumStyle,
                smallStyle:smallStyle ,
              ),
            ],

          ),
        ],
      ),
    );
  }
}
