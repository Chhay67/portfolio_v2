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
  const ProfilePage({super.key,required this.onChangedIndex,required this.selectedNavBarIndex });
  final Function( RouteEnum route ) onChangedIndex;
  final int selectedNavBarIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconSize = context.defaultResponsive(mobile: 12,tablet: 18,desktop: 20);

    return SingleChildScrollView(
      padding:  EdgeInsets.symmetric(vertical: context.padding.md),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.max,
        children: [
          const ProfileImage(),
          Text(
            'Developer Name',
            style: context.mediumTextStyle.copyWith(
              fontFamily: AppFonts.raleWay,
              fontSize: 28,
            ),
          ),
          Text(
            'Developer position',
            style: context.smallTextStyle.copyWith(
              fontFamily: AppFonts.raleWay,
            ),
          ),
          SocialMediaButtons(
            onLinkedInPressed: () {},
            onTelegramPressed: () {},
            onGitHubPressed: () {},
          ),
          const ContactsView(
            child: Column(
              children: [
                ContactItem(
                  icon: FontAwesomeIcons.mobileScreen,
                  subtitle: 'Phone Number',
                  title: '+1234567890',
                ),
                ContactItem(
                  icon: FontAwesomeIcons.envelope,
                  subtitle: 'Email',
                  title: 'email@gmail.com',
                ),
                ContactItem(
                  icon: FontAwesomeIcons.locationDot,
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
                  color: Theme.of(context).cardTheme.color,
                  isExpanded: true,
                  isSelected: selectedNavBarIndex == RouteEnum.home.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.house,size: iconSize,),

                  onPressed: () {
                    onChangedIndex( RouteEnum.home,);
                  },
                ),
                GeneralButton(
                  color: Theme.of(context).cardTheme.color,
                  isExpanded: true,
                  isSelected: selectedNavBarIndex == RouteEnum.resume.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.newspaper,size: iconSize,),
                  onPressed: () {
                    onChangedIndex( RouteEnum.resume,);

                  },
                ),
                GeneralButton(
                  isExpanded: true,
                  color: Theme.of(context).cardTheme.color,
                  isSelected: selectedNavBarIndex == RouteEnum.work.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.briefcase,size: iconSize,),

                  onPressed: () {
                    onChangedIndex( RouteEnum.work,);
                  },
                ),
                GeneralButton(
                  isExpanded: true,
                  color: Theme.of(context).cardTheme.color,
                  isSelected: selectedNavBarIndex == RouteEnum.contact.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.addressBook,size: iconSize,),

                  onPressed: () {
                    onChangedIndex( RouteEnum.contact,);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
