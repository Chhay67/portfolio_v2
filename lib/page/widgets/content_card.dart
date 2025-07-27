import 'package:flutter/material.dart';

import '../../core/theme/shape.dart';


class ContentView extends StatelessWidget {
  const ContentView({
    super.key,
    required this.child,
    this.color,
  });

  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: AppShapes.roundedRectangleBorder,
      elevation: 0,
      child: child,
    );
  }
}