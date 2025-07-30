import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/responsive_util.dart';

class EducationDetail extends StatelessWidget {
  const EducationDetail({
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
        Text('Education', style: largeStyle),
        ContentView(
          width: double.maxFinite,
           color: color,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2023', style: smallStyle),
                Text('Flutter Mobile Development',style: mediumStyle),
                Text('Completed 2 Flutter courses at Udemy.com',style: smallStyle),

              ],
            ),
          ),
        ),
        ContentView(
          width: double.maxFinite,
          color: color,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2023', style: smallStyle),
                Text('Flutter Mobile Development',style: mediumStyle),
                Text('Completed 2 Flutter courses at Udemy.com',style: smallStyle),

              ],
            ),
          ),
        ),
        ContentView(
          width: double.maxFinite,
          color: color,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2023', style: smallStyle),
                Text('Flutter Mobile Development',style: mediumStyle),
                Text('Completed 2 Flutter courses at Udemy.com',style: smallStyle),

              ],
            ),
          ),
        ),
      ],
    );
  }
}