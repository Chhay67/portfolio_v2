import 'package:flutter/material.dart';

import '../../core/theme/shape.dart';


class ContentView extends StatelessWidget {
  const ContentView({
    super.key,
    required this.child,
    this.color,
    this.width,
  });

  final Widget child;
  final Color? color;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width ,
      child: Card(
        margin: EdgeInsets.zero,
        color: color,
        shape: AppShapes.roundedRectangleBorder,
        elevation: 0,
        child: child,
      ),
    );
  }
}