

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/app_value.dart';
import 'general_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key,
    required this.onTelegramPressed,
    required this.onLinkedInPressed,
    required this.onGitHubPressed,
  });
  final Function() onTelegramPressed;
  final Function() onLinkedInPressed;
  final Function() onGitHubPressed;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: AppSpacer.defaultSpacer,
      spacing: AppSpacer.defaultSpacer,
      children: [
        GeneralButton(
          onPressed: onTelegramPressed,
          child: Icon(FontAwesomeIcons.telegram),
        ),
        GeneralButton(
          onPressed: onLinkedInPressed,
          child: Icon(FontAwesomeIcons.linkedin),
        ),
        GeneralButton(
          onPressed: onGitHubPressed,
          child: Icon(FontAwesomeIcons.github),
        ),

      ],
    );
  }
}
