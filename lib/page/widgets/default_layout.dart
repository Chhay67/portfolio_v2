

import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../core/mixin/padding_mixin.dart';
import '../../core/utils/responsive_util.dart';
import 'content_card.dart';

class DefaultLayout extends StatelessWidget with ValueMixin {
  const DefaultLayout({
    super.key,
    required this.profileWidget,
    required this.contentWidget,
  });
  final Widget profileWidget;
  final Widget contentWidget;

  int responsiveProfileFlex(ResponsiveUtil responsive) {
    switch(responsive.deviceType) {
      case DeviceType.mobile:
        return 1;
      case DeviceType.tablet:
        return 4;
      case DeviceType.desktop:
        return 3;
    }
  }
  int responsiveContentFlex(ResponsiveUtil responsive) {

    switch(responsive.deviceType) {
      case DeviceType.mobile:
        return 1;
      case DeviceType.tablet:
        return 7;
      case DeviceType.desktop:
        return 6;
    }
  }
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtil(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.defaultResponsive(), vertical: padding(context)),
      constraints: const BoxConstraints.expand(),
      child: Row(
        spacing: 14,
        children: [
          Expanded(
              flex: responsiveProfileFlex(responsive),
              child: ContentView(
                child: profileWidget,
              )),
          Expanded(
              flex: responsiveContentFlex(responsive),
              child: ContentView(
                child: contentWidget,
              )),
        ],
      ),
    );
  }
}
