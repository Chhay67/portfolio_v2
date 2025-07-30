import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../../core/theme/shape.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/responsive_util.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
    required this.title,
    required this.description,
    this.fontSize = 18.0,
  });
  final String title;
  final String description;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    final largeStyle = context.largeTextStyle.copyWith(fontFamily: AppFonts.poppins,fontSize:fontSize );
    final smallStyle = context.smallTextStyle;
    final padding = context.padding();
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      shape: AppShapes.roundedRectangleBorder,
      margin: EdgeInsets.zero,
      color:isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding:  EdgeInsets.all(padding),
        child: Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green,
              child: const Placeholder(),
            ),
            Text(title,style: largeStyle),
            Text(description,style: smallStyle),
          ],
        ),
      ),
    );
  }
}
