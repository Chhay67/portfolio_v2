
import 'package:flutter/material.dart';
import 'package:portfolio_v2/core/utils/responsive_util.dart';

extension ContextExtension on BuildContext {
  /// Returns the current locale of the app.


  TextStyle get largeTextStyle {
    return Theme.of(this).textTheme.displayLarge ?? const TextStyle();
  }
  TextStyle get mediumTextStyle {
    return Theme.of(this).textTheme.displayMedium ?? const TextStyle();
  }

  TextStyle get smallTextStyle {
    return Theme.of(this).textTheme.displaySmall ?? const TextStyle();
  }


  double  defaultResponsive({double mobile = 12, double tablet = 24, double desktop = 80}) {
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