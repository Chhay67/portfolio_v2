import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/contact_item.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/general_button.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/profile.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/social_media_buttons.dart';
import '../../core/utils/app_fonts.dart';
import '../../core/utils/app_value.dart';
import '../../route/route_enum.dart';
import '../widgets/content_view.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage(
      {super.key,
      required this.onChangedIndex,
      required this.selectedNavBarIndex});

  final Function(RouteEnum route) onChangedIndex;
  final int selectedNavBarIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final padding = context.padding();
    final mediumStyle = context.mediumTextStyle.copyWith(fontFamily: AppFonts.raleWay, fontSize: 28);
    final smallStyle = context.smallTextStyle.copyWith(fontFamily: AppFonts.raleWay);
    final cardColor = theme.cardTheme.color;
    final isHome = selectedNavBarIndex == RouteEnum.home.index;
    final isResume = selectedNavBarIndex == RouteEnum.resume.index;
    final isWork = selectedNavBarIndex == RouteEnum.work.index;
    final isContact = selectedNavBarIndex == RouteEnum.contact.index;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.defaultPadding),
      child: Column(
        spacing: AppSpacer.defaultSpacer,
        mainAxisSize: MainAxisSize.max,
        children: [
          const ProfileImage(),
          Text('Developer Name', style: mediumStyle),
          Text('Developer position', style: smallStyle),
          SocialMediaButtons(
            onLinkedInPressed: () {},
            onTelegramPressed: () {},
            onGitHubPressed: () {},
          ),
          ContactsView(
            padding:
                EdgeInsets.symmetric(horizontal: padding, vertical: padding),
            child: const Column(
              children: [
                ContactItem(
                  icon: FontAwesomeIcons.mobileScreen,
                  subtitle: 'Phone Number',
                  title: '+1234567890',
                ),
                ContactItem(
                  icon: FontAwesomeIcons.envelope,
                  padding: EdgeInsets.only(bottom: 12, top: 12),
                  subtitle: 'Email',
                  title: 'email@gmail.com',
                ),
                ContactItem(
                  icon: FontAwesomeIcons.locationDot,
                  padding: EdgeInsets.only(bottom: 12, top: 12),
                  subtitle: 'Location',
                  title: 'City, Country',
                ),
              ],
            ),
          ),
          ContactsView(
            child: Row(
              spacing: 10,
              children: [
                GeneralButton(
                  isExpanded: true,
                  color: cardColor,
                  isSelected: isHome,
                  borderRadius: 12,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(FontAwesomeIcons.house),
                  onPressed: () => onChangedIndex(RouteEnum.home),
                ),
                GeneralButton(
                  isExpanded: true,
                  color: cardColor,
                  isSelected: isResume,
                  borderRadius: 12,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(FontAwesomeIcons.newspaper),
                  onPressed: () => onChangedIndex(RouteEnum.resume),
                ),
                GeneralButton(
                  isExpanded: true,
                  color: cardColor,
                  isSelected: isWork,
                  borderRadius: 12,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(FontAwesomeIcons.briefcase),
                  onPressed: () => onChangedIndex(RouteEnum.work),
                ),
                GeneralButton(
                  isExpanded: true,
                  color: cardColor,
                  isSelected: isContact,
                  borderRadius: 12,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(FontAwesomeIcons.addressBook),
                  onPressed: () => onChangedIndex(RouteEnum.contact),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
