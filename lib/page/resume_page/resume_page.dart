

import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../widgets/content_card.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('ResumePage',style: context.largeTextStyle,),
        Container(
          height: 200,

          width: double.infinity,
          color: Colors.cyanAccent,
        )
      ],
    );
  }
}
