

import 'package:flutter/cupertino.dart';

class WhatIcanDoFlexCards extends StatelessWidget {
  const WhatIcanDoFlexCards({
    super.key,
    required this.firstWidget,
    required this.secondWidget,
  });
  final Widget firstWidget;
  final Widget? secondWidget;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
          child: firstWidget,
        ),
        if(secondWidget != null)
        Expanded(
          child: secondWidget!,
        ),
      ],
    );
  }
}