

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/app_value.dart';
import 'general_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key,
    required this.onTelegramPressed,
    required this.onLinkedInPressed,
    required this.onGitHubPressed,
    this.color,
  });
  final Function() onTelegramPressed;
  final Function() onLinkedInPressed;
  final Function() onGitHubPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: AppSpacer.defaultSpacer,
      spacing: AppSpacer.defaultSpacer,
      children: [
        GeneralButton(
          color: color,
          onPressed: onTelegramPressed,
          child: const Icon(FontAwesomeIcons.telegram),
        ),
        GeneralButton(
          color: color,
          onPressed: onLinkedInPressed,
          child: const Icon(FontAwesomeIcons.linkedin),
        ),
        GeneralButton(
          color: color,
          onPressed: onGitHubPressed,
          child: const Icon(FontAwesomeIcons.github),
        ),

      ],
    );
  }
}
