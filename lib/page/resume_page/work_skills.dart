import 'package:flutter/material.dart';


class WorkSkills extends StatelessWidget {
  const WorkSkills({super.key,required this.smallStyle,required this.largeStyle});
  final TextStyle smallStyle;
  final TextStyle largeStyle;
  @override
  Widget build(BuildContext context) {

    const List<String> skills = ["Flutter","Angular","Android","JavaScript","ReactJs","VueJs"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      spacing: 10,
      children: [
        Text('Work Skills', style: largeStyle),
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
                  style: smallStyle,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
