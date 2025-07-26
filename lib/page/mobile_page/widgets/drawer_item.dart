

import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key,required this.icon,required this.title});

  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      spacing: 10,
      children: [
         icon,
        Text(
          title,
          style: context.largeTextStyle.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
