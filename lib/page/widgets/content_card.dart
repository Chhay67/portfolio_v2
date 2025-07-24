import 'package:flutter/material.dart';

import '../../core/theme/shape.dart';


class ContentView extends StatelessWidget {
  const ContentView({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Card(
        shape: AppShapes.roundedRectangleBorder,
        elevation: 0,
        child: child,
      ),
    );
  }
}