import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';


class WorkSkills extends StatelessWidget {
  const WorkSkills({super.key});

  @override
  Widget build(BuildContext context) {
   // final isMobile = ResponsiveUtil(context).isMobile;
    const List<String> skills = ["Flutter","Angular","Android","JavaScript","ReactJs","VueJs"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      spacing: 10,
      children: [
        Text('Work Skills', style: context.largeTextStyle),
        Wrap(
          runSpacing: 10,
          spacing: 10,
          children: List.generate(
            skills.length,
            (index) {
              final skill = skills[index];
              return Chip(

                label: Text(
                  skill,
                  style: context.smallTextStyle,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
