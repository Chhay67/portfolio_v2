import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, left: context.defaultResponsive(mobile: 12,tablet: 16,desktop: 20),top: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade200)
          )
      ),
      child: Row(
        spacing: 10,
        children: [
          Icon(icon),
          Flexible(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subtitle, style: context.smallTextStyle.copyWith(fontSize: 12),maxLines: 1,),
                Text(title, style: context.smallTextStyle.copyWith(fontWeight: FontWeight.bold),maxLines: 1,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
