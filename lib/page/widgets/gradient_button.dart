

import 'package:flutter/material.dart';
import '../../core/theme/color.dart';
import '../../core/theme/shape.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Gradient? gradient;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;
  final double elevation;

  final Widget child;

  const GradientButton({
    super.key,

    required this.onPressed,
    this.gradient,
    this.borderRadius = AppShapes.borderRadius,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    this.textStyle,
    this.elevation = 0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final defaultGradient = gradient ?? AppColors.primaryGradient;

    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Ink(
          decoration: BoxDecoration(
            gradient: defaultGradient,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
