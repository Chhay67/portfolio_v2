

import 'package:flutter/cupertino.dart';

import '../utils/responsive_util.dart';

mixin ValueMixin{

  double padding(BuildContext context) {
    final responsive = ResponsiveUtil(context);
    switch(responsive.deviceType) {
      case DeviceType.mobile:
        return 12;
      case DeviceType.tablet:
        return 32;
      case DeviceType.desktop:
        return 42;
    }
  }
}