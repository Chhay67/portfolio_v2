

import 'package:portfolio_v2/core/utils/responsive_util.dart';

class AppPadding {
  final ResponsiveUtil r;

  AppPadding(this.r);

  double get scaleWidth => r.width / ResponsiveUtil.baseWidth;
  double get scaleHeight => r.height / ResponsiveUtil.baseHeight;

  double _scale(double base) {
    switch (r.deviceType) {
      case DeviceType.tablet:
        return base * 1.3;
      case DeviceType.desktop:
        return base * 1.6;
      default:
        return base;
    }
  }

  double get xs => _scale(4 * scaleWidth);
  double get sm => _scale(8 * scaleWidth);
  double get md => _scale(16 * scaleWidth);
  double get lg => _scale(24 * scaleWidth);
  double get xl => _scale(32 * scaleWidth);

  double get verticalSm => _scale(8 * scaleHeight);
  double get verticalMd => _scale(16 * scaleHeight);
  double get verticalLg => _scale(24 * scaleHeight);

  double wp(double percent) => r.wp(percent);
  double hp(double percent) => r.hp(percent);
}