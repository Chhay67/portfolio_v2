import 'package:flutter/material.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';


class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    super.key,
    required this.color,
    required this.smallStyle,
    required this.largeStyle,
    required this.mediumStyle,
    required this.padding,
  });

  final TextStyle largeStyle;

  final TextStyle smallStyle;
  final TextStyle mediumStyle;
  final double padding;

  final Color? color;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      spacing: 10,
      children: [
        Text('Experience', style: largeStyle),
        ContentView(
          width: double.maxFinite,
          color: color,
          child: Padding(
            padding: EdgeInsets.all(
                padding),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Present', style: smallStyle),
                Text('Working at Polygram Solutions',style: mediumStyle),
                Text('Mobile Development using Flutter Framework',style: smallStyle),
              ],
            ),
          ),
        ),
      ],
    );
  }
}