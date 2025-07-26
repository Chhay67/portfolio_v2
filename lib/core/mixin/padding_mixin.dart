

import 'package:flutter/cupertino.dart';

import '../utils/responsive_util.dart';

mixin ValueMixin{

  double padding(BuildContext context) {
    final responsive = ResponsiveUtil(context);
    switch(responsive.deviceType) {
      case DeviceType.mobile:
        return 16;
      case DeviceType.tablet:
        return 22;
      case DeviceType.desktop:
        return 32;
    }
  }
}