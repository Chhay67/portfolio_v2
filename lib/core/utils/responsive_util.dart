



import 'package:flutter/material.dart' show MediaQuery,BuildContext;
enum DeviceType {
  mobile,
  tablet,
  desktop,
}
class ResponsiveUtil {
  final BuildContext context;
  final double width;

  ResponsiveUtil(this.context) : width = MediaQuery.of(context).size.width;

  bool get isMobile => width < 600;

  bool get isTablet => width >= 600 && width < 1024;

  bool get isDesktop => width >= 1024;

// 🔹 Device type getter
  DeviceType get deviceType {
    if (isDesktop) return DeviceType.desktop;
    if (isTablet) return DeviceType.tablet;
    return DeviceType.mobile;
  }

  /// Example: use for percentage-based width
  double wp(double percent) => width * percent / 100;

  /// Example: use for percentage-based height
  double hp(double percent) => MediaQuery.of(context).size.height * percent / 100;

  /// Example: apply different layout values
  T responsiveValue<T>({
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (isDesktop && desktop != null) return desktop;
    if (isTablet && tablet != null) return tablet;
    return mobile;
  }



}
