import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import 'meansure_widget.dart';

class TimeLineItem extends StatelessWidget {
  const TimeLineItem({
    super.key,
    required this.title,
    required this.description,
    this.isLastChild = false,
  });
  final bool isLastChild;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return OrigChildWH(
      builder: (context, size, __) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 10,height: 10,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      Flexible(child: Text(title,style: context.mediumTextStyle)),
                    ],
                  ),
                  Row(
                    children: [
                      if(!isLastChild)...[
                        CustomPaint(
                          size: Size(10, size.height - 20),
                          painter: VerticalLine(),
                        ),
                        const SizedBox(width: 10),
                      ]else...[
                        const SizedBox(width: 20,height: 20),
                      ],
                      Flexible(child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(description,style: context.smallTextStyle)),)
                    ],
                  )

                ],
              ),
            ),


          ],
        );
      },
    );
  }
}