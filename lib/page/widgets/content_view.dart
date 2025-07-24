import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import '../../core/utils/app_value.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key, required this.child,this.margin,this.padding });

  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin:margin ??  EdgeInsets.symmetric(
        horizontal: context.defaultResponsive(mobile: 12, tablet: 24, desktop: 32),
      ),
      padding:padding ?? const EdgeInsets.symmetric(
        horizontal: AppPadding.defaultPadding,
        vertical: AppPadding.defaultPadding,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(AppRadius.defaultRadius),
      ),
      child: child,
    );
  }
}
