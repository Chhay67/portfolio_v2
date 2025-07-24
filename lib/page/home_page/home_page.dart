

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentView(
      child: Column(
        children: [
          Text('HomePage',style: context.largeTextStyle,),
          Container(
            height: 200,

            width: double.infinity,
            color: Colors.cyanAccent,
          )
        ],
      ),
    );
  }
}
