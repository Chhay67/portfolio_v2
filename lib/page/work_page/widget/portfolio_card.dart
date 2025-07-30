import 'package:flutter/material.dart';

import '../../../core/theme/shape.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
    required this.title,
    required this.description,
    this.fontSize = 18.0,
    this.padding =  0,
    required this.color,
    required this.mediumStyle,
    required this.smallStyle,
    this.height = 100,
  });
  final String title;
  final String description;
  final double? fontSize;

  final Color? color;
  final double padding;
  final TextStyle mediumStyle;
  final TextStyle smallStyle;
  final double height;
  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 0,
      shape: AppShapes.roundedRectangleBorder,
      margin: EdgeInsets.zero,
      color:color,
      child: Padding(
        padding:  EdgeInsets.all(padding),
        child: Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
               width: double.maxFinite,
              height: height,
              child: const Placeholder(child: Center(child: Text(' image coming soon!',textAlign: TextAlign.center,)),),
            ),
            Text(title,style: mediumStyle),
            Text(description,style: smallStyle),
          ],
        ),
      ),
    );
  }
}
