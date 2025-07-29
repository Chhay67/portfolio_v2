import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/core/utils/responsive_util.dart';

class AppFontSp {
  final ResponsiveUtil r;

  AppFontSp(this.r);

  double _scale(double base) {
    final scaled = MediaQuery.textScalerOf(r.context).scale(base);
    return r.responsiveValue(
      mobile: scaled,
      tablet: scaled * 1.2,
      desktop: scaled * 1.3,
    );
  }

  double get displayLarge => _scale(24);

  double get displaySmall => _scale(24);
  double get displayMedium => _scale(20);

}