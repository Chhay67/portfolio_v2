
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/repesonsive_helper.dart';
import 'package:portfolio_v2/core/utils/responsive_util.dart';

import 'app_font_size.dart';
import 'app_padding.dart';
import 'app_size.dart';

extension ContextExtension on BuildContext {
  /// Returns the current locale of the app.


  TextStyle get largeTextStyle {
    return Theme.of(this).textTheme.displayLarge!;
  }
  TextStyle get mediumTextStyle {
    return Theme.of(this).textTheme.displayMedium!;
  }

  TextStyle get smallTextStyle {
    return Theme.of(this).textTheme.displaySmall!;
  }


  double  defaultResponsive({double mobile = 16, double tablet = 24, double desktop = 80}) {
    final responsive = ResponsiveUtil(this);
    switch(responsive.deviceType) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.desktop:
        return desktop;
    }
  }
}

extension ResponsiveExtension on BuildContext {
  ResponsiveUtil get responsive => ResponsiveUtil(this);
  ResponsiveHelper get responsiveHelper => ResponsiveHelper.of(this);

  AppPadding get padding => responsiveHelper.padding;
  AppFontSp get fontSp => responsiveHelper.fontSp;
  AppSize get size => responsiveHelper.size;

}