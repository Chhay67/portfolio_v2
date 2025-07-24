

import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_view.dart';

import '../widgets/content_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentView(
      child: Column(
        children: [
          Text('ContactPage',style: context.largeTextStyle,),
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
