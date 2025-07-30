

import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/core/utils/app_extension.dart';

import '../../core/utils/responsive_util.dart';
import 'content_card.dart';

class DefaultLayout extends StatelessWidget   {
  const DefaultLayout({
    super.key,
    required this.profileWidget,
    required this.contentWidget,
  });
  final Widget profileWidget;
  final Widget contentWidget;

  int responsiveProfileFlex(DeviceType deviceType) {
    switch(deviceType) {
      case DeviceType.mobile:
        return 1;
      case DeviceType.tablet:
        return 4;
      case DeviceType.desktop:
        return 3;
    }
  }
  int responsiveContentFlex(DeviceType deviceType) {

    switch(deviceType) {
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
    final responsive = ResponsiveUtil(context).deviceType;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.padding(desktop: 80), vertical: context.padding()),
      constraints: const BoxConstraints.expand(),
      child: Row(
        spacing: 14,
        children: [
          Expanded(
              flex: responsiveProfileFlex(responsive),
              child: ContentView(
                height: double.maxFinite,
                child: profileWidget,
              )),
          Expanded(
              flex: responsiveContentFlex(responsive),
              child: ContentView(
                height: double.maxFinite,
                child: contentWidget,
              )),
        ],
      ),
    );
  }
}
