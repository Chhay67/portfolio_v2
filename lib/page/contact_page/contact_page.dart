import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/app_fonts.dart';
import '../home_page/widget/what_i_can_do_card_item.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    final padding = context.padding();
    final largeStyle = context.largeTextStyle.copyWith(fontSize: 26,fontFamily: AppFonts.poppins);
    final isMobile = r.isMobile;
    final theme = Theme.of(context);
    final smallStyle = context.smallTextStyle;

    return SingleChildScrollView(
      padding: isMobile ? EdgeInsets.zero: EdgeInsets.all(padding),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CONTACT',
            style:largeStyle,
          ),
          const Divider(),
          StaggeredGrid.count(
            crossAxisCount: isMobile ? 1 : 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children:  [
              CardItem(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                padding: padding,
                largeStyle: largeStyle,
                smallStyle: smallStyle,
                fontSize: 16,
                title: 'Phone Number',
                description: '012 831 354',
              ),
              CardItem(
                color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
                padding: padding,
                largeStyle: largeStyle,
                smallStyle: smallStyle,
                fontSize: 16,
                title: 'My Email:',
                description: 'songkimchhay67@gmail.com',
              ),
            ],
          ),
          ContentView(
            color: isMobile ? theme.cardTheme.color: theme.scaffoldBackgroundColor,
              child: Padding(
            padding: EdgeInsets.all(padding ),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'I am always open to discussing new projects, opportunities in tech world,partnerships and more so mentorship. ',
                  style: smallStyle,
                ),
                const TextField(
                  decoration:InputDecoration(
                    labelText: 'Name :',

                  ) ,
                ),
                const TextField(
                  decoration:InputDecoration(
                    labelText: 'Email :',

                  ) ,
                ),
                const TextField(
                  decoration:InputDecoration(
                    labelText: 'Message :',

                  ) ,
                ),
                const SizedBox(height: 10,),
                OutlinedButton(onPressed: () {

                }, child: Text('Submit',style: smallStyle))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
