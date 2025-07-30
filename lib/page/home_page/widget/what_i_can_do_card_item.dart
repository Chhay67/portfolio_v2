import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_fonts.dart';

import '../../../core/theme/shape.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.title,
    required this.description,
    this.fontSize = 18.0,

    required this.padding,
    required this.smallStyle,
    required this.largeStyle,
    required this.color,
  });
  final String title;
  final String description;
  final double? fontSize;

  final double padding;
  final TextStyle largeStyle;
  final TextStyle smallStyle;
  final Color? color;
  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 0,
      shape: AppShapes.roundedRectangleBorder,
      margin: EdgeInsets.zero,
      color: color,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: largeStyle.copyWith(fontFamily: AppFonts.poppins,fontSize:fontSize )),
            Text(description,style: smallStyle),
          ],
        ),
      ),
    );
  }
}
