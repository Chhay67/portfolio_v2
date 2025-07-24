import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/contact_item.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/general_button.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/profile.dart';
import 'package:portfolio_v2/page/tablet_desktop_page/widgets/social_media_buttons.dart';
import '../../core/provider/nav_bar_provider.dart';
import '../../core/utils/app_fonts.dart';
import '../../core/utils/app_value.dart';
import '../../route/route_enum.dart';
import '../widgets/content_view.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  void onChangedIndex({required RouteEnum route,required BuildContext context,required WidgetRef ref}) {
    ref.read(navBarProvider.notifier).update((state) => route.index);
    switch (route) {
      case RouteEnum.home:
        context.goNamed(RouteEnum.home.name);

      case RouteEnum.resume:
        context.goNamed(RouteEnum.resume.name);

      case RouteEnum.work:
        context.goNamed(RouteEnum.work.name);
      case RouteEnum.contact:
        context.goNamed(RouteEnum.contact.name);
    }
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconSize = context.defaultResponsive(mobile: 12,tablet: 18,desktop: 20);
    final navBarIndex = ref.watch(navBarProvider);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.defaultPadding),
      child: Column(
        spacing: AppSpacer.defaultSpacer,
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
                  isSelected: navBarIndex == RouteEnum.home.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.house,size: iconSize,),

                  onPressed: () {
                    onChangedIndex(route: RouteEnum.home, context: context, ref: ref);
                  },
                ),
                GeneralButton(
                  color: Theme.of(context).cardTheme.color,
                  isExpanded: true,
                  isSelected: navBarIndex == RouteEnum.resume.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.newspaper,size: iconSize,),
                  onPressed: () {
                    onChangedIndex(route: RouteEnum.resume, context: context,ref: ref);
                  },
                ),
                GeneralButton(
                  isExpanded: true,
                  color: Theme.of(context).cardTheme.color,
                  isSelected: navBarIndex == RouteEnum.work.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.briefcase,size: iconSize,),

                  onPressed: () {
                    onChangedIndex(route: RouteEnum.work, context: context,ref: ref);
                  },
                ),
                GeneralButton(
                  isExpanded: true,
                  color: Theme.of(context).cardTheme.color,
                  isSelected: navBarIndex == RouteEnum.contact.index,
                  borderRadius: 12,
                  child: Icon(FontAwesomeIcons.addressBook,size: iconSize,),

                  onPressed: () {
                    onChangedIndex(route: RouteEnum.contact, context: context,ref: ref);
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
