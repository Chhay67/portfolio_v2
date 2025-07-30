import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/core/utils/app_value.dart';
import 'package:portfolio_v2/page/mobile_page/widgets/drawer_item.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/profile.dart';

import '../../route/route_enum.dart';
import '../tablet_desktop_page/widgets/general_button.dart';
import '../tablet_desktop_page/widgets/social_media_buttons.dart';

class DrawerPage extends ConsumerWidget {
  const DrawerPage(
      {super.key,
      required this.onThemeChange,
      required this.onClickDrawer,
      required this.onChangedIndex,
      required this.selectedNavBarIndex});

  final Function() onThemeChange;
  final Function() onClickDrawer;
  final Function(RouteEnum route) onChangedIndex;
  final int selectedNavBarIndex;

  void onChangeTheme(RouteEnum route) {
    onChangedIndex(route);
    onClickDrawer();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeColor = Theme.of(context).cardTheme.color;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.defaultPadding,
            vertical: AppPadding.defaultPadding),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton.outlined(
                    onPressed: onClickDrawer,
                    icon: const Icon(
                      Icons.menu_open,
                    )),
                IconButton.outlined(
                    onPressed: onThemeChange,
                    icon: const Icon(
                      Icons.dark_mode,
                    )),
              ],
            ),
            const ProfileImage(),
            Text(
              'Song Kimchhay',
              style: context.mediumTextStyle.copyWith(
                fontSize: 28,
              ),
            ),
            Text(
              'Mobile Developer',
              style: context.smallTextStyle,
            ),
            SocialMediaButtons(
              color: Theme.of(context).cardTheme.color,
              onLinkedInPressed: () {},
              onTelegramPressed: () {},
              onGitHubPressed: () {},
            ),
            Column(
              spacing: 10,
              children: [
                GeneralButton(
                  isFullWidth: true,
                  color: themeColor,
                  isSelected: selectedNavBarIndex == RouteEnum.home.index,
                  borderRadius: 12,
                  child: const DrawerItem(
                    icon: Icon(
                      FontAwesomeIcons.house,
                    ),
                    title: "Home",
                  ),
                  onPressed: () {
                    onChangeTheme(
                      RouteEnum.home,
                    );
                  },
                ),
                GeneralButton(
                  isFullWidth: true,
                  color: themeColor,
                  isSelected: selectedNavBarIndex == RouteEnum.resume.index,
                  borderRadius: 12,
                  child: const DrawerItem(
                    icon: Icon(
                      FontAwesomeIcons.newspaper,
                    ),
                    title: "Resume",
                  ),
                  onPressed: () {
                    onChangeTheme(
                      RouteEnum.resume,
                    );
                  },
                ),
                GeneralButton(
                  isFullWidth: true,
                  color: themeColor,
                  isSelected: selectedNavBarIndex == RouteEnum.work.index,
                  borderRadius: 12,
                  child: const DrawerItem(
                    icon: Icon(
                      FontAwesomeIcons.briefcase,
                    ),
                    title: "Work",
                  ),
                  onPressed: () {
                    onChangeTheme(RouteEnum.work);
                  },
                ),
                GeneralButton(
                  isFullWidth: true,
                  color: themeColor,
                  isSelected: selectedNavBarIndex == RouteEnum.contact.index,
                  borderRadius: 12,
                  child: const DrawerItem(
                    icon: Icon(
                      FontAwesomeIcons.addressBook,
                    ),
                    title: "Contact",
                  ),
                  onPressed: () {
                    onChangeTheme(
                      RouteEnum.contact,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
