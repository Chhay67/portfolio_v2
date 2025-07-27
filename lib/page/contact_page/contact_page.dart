import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/widgets/content_card.dart';

import '../../core/utils/responsive_util.dart';
import '../home_page/widget/what_i_can_do_card_item.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUtil(context).isMobile;
    return SingleChildScrollView(
      padding: EdgeInsets.all(
          context.defaultResponsive(mobile: 16, tablet: 20, desktop: 22)),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CONTACT',
            style: context.largeTextStyle.copyWith(fontSize: 32),
          ),
          const Divider(),
          StaggeredGrid.count(
            crossAxisCount: isMobile ? 1 : 2,
            children: const [
              CardItem(
                fontSize: 16,
                title: 'Phone Number',
                description: '+254723909353\n+254723909353',
              ),
              CardItem(
                fontSize: 16,
                title: 'Email me:',
                description: 'songkimchhay67@gmail.com',
              ),
            ],
          ),
          ContentView(
            color: isMobile ? Theme.of(context).cardTheme.color: Theme.of(context).scaffoldBackgroundColor,
              child: Padding(
            padding: EdgeInsets.all(
                 context.defaultResponsive(
                    mobile: 16, tablet: 20, desktop: 24) ),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'I am always open to discussing new projects, opportunities in tech world,partnerships and more so mentorship. ',
                  style: context.smallTextStyle,
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

                }, child: Text('Submit',style: context.smallTextStyle,))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
