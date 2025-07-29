

import 'package:portfolio_v2/core/utils/responsive_util.dart';

class AppSize {
  final ResponsiveUtil r;

  AppSize(this.r);

  double _scale(double base) {
    return r.responsiveValue(mobile: base, tablet: base * 1.3, desktop: base * 1.6);
  }

  double get tiny => _scale(24);
  double get small => _scale(40);
  double get medium => _scale(64);
  double get large => _scale(96);
  double get extraLarge => _scale(128);

  double get radiusSm => _scale(4);
  double get radiusMd => _scale(8);
  double get radiusLg => _scale(16);

  double get iconSm => _scale(20);
  double get iconMd => _scale(24);
  double get iconLg => _scale(32);
}