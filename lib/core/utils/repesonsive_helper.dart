


import 'package:portfolio_v2/core/utils/responsive_util.dart';

import 'app_font_size.dart';
import 'app_padding.dart';
import 'app_size.dart';

class ResponsiveHelper {
  final ResponsiveUtil r;

  late final AppPadding padding;
  late final AppFontSp fontSp;
  late final AppSize size;

  ResponsiveHelper(this.r) {
    padding = AppPadding(r);
    fontSp = AppFontSp(r);
    size = AppSize(r);
  }

  static ResponsiveHelper of(context) => ResponsiveHelper(ResponsiveUtil.of(context));
}