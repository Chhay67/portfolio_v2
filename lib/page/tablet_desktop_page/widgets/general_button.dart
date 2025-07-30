import 'package:flutter/material.dart';
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
    this.isFullWidth = false,
    this.padding = const EdgeInsets.all(12),
  });

  final Function()? onPressed;
  final Widget child;

  final Color? color;

  final double borderRadius;

  final bool isSelected;

  final bool isExpanded;
  final bool isFullWidth;
  final EdgeInsets padding;

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
           padding: padding,
           child: child,
         ),
       ),
     );
    if (!isExpanded) {
      if(isFullWidth){
        return SizedBox(width: double.maxFinite,child: widget,);
      }
      return widget;
    }
    return Expanded(child: widget);
  }
}
