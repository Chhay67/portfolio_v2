import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.padding,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding?? const EdgeInsets.only(bottom: 12),
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
