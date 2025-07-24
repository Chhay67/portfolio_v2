import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import '../../../core/theme/color.dart';
import '../../../core/utils/app_value.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    this.onPressed,
    required this.child,
    this.color,
    this.borderRadius = AppRadius.medium,
    this.isSelected = false,
    this.isExpanded = false,
  });

  final Function()? onPressed;
  final Widget child;

  final Color? color;

  final double borderRadius;

  final bool isSelected;

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
     final widget = Material(
       elevation: 0,
       color: color ?? Theme.of(context).scaffoldBackgroundColor,
       borderRadius: BorderRadius.circular(borderRadius),
       child: InkWell(
         onTap: onPressed,
         borderRadius: BorderRadius.circular(borderRadius),
         child: Ink(
           decoration: BoxDecoration(
             gradient:isSelected ? AppColors.primaryGradient : null,
             borderRadius: BorderRadius.circular(borderRadius),
           ),
           padding: EdgeInsets.all(context.defaultResponsive(mobile: 8, tablet: 12, desktop: 18)),
           child: child,
         ),
       ),
     );
    if (!isExpanded) {
      return widget;
    }
    return Expanded(child: widget);
  }
}
