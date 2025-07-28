import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';


class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  @override
  Widget build(BuildContext context) {
    //final isMobile = ResponsiveUtil(context).isMobile;
    const List<String> skills = ["Time Management","Mentorship","Research","Flexibility","Writing"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      spacing: 10,
      children: [
        Text('Soft Skills', style: context.largeTextStyle),
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
