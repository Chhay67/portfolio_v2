import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBarTheme, CardThemeData, ChipThemeData, ColorScheme, DrawerThemeData, FontWeight, IconButton, IconButtonThemeData, TextStyle, TextTheme, ThemeData;
import 'package:portfolio_v2/core/theme/shape.dart';

import '../utils/app_fonts.dart';
import '../utils/repesonsive_helper.dart';
import 'color.dart';

class AppThemes {
  AppThemes._();
  static ThemeData lightModeTheme(BuildContext context){
    final r = ResponsiveHelper.of(context);
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.lightBackground,
      fontFamily: AppFonts.raleWay,
      textTheme:  TextTheme(
        displayLarge: TextStyle(fontSize: r.fontSp.displayLarge, color: AppColors.black,fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: r.fontSp.displayMedium, color: AppColors.black,fontWeight: FontWeight.w500),
        displaySmall: TextStyle(fontSize: r.fontSp.displaySmall, color: AppColors.black,fontWeight: FontWeight.w400),
      ),
      cardColor: AppColors.white,
      cardTheme: CardThemeData(
        color: AppColors.white,
        shape: AppShapes.roundedRectangleBorder,
        elevation: 1,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor:  AppColors.lightBackground,
      ),
      appBarTheme:  AppBarTheme(
        color: AppColors.lightBackground,
        actionsIconTheme:  IconThemeData(
          color: AppColors.black,
          size: r.size.iconMd,
        ),
        elevation: 0,
        foregroundColor: AppColors.black,
        iconTheme: IconThemeData(
          color: AppColors.black,
          size:  r.size.iconMd,
        ),

      ),
      iconTheme:  IconThemeData(
        color: AppColors.black,
        size:  r.size.iconMd,
      ),
      chipTheme: const ChipThemeData(
        backgroundColor:  AppColors.lightBackground,
        elevation: 0,

      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.black,
          iconSize: r.size.iconMd,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightBackground,
        onSurface: AppColors.white,
        primary: AppColors.orange,
      ),

    );
  }

  static ThemeData darkModeTheme(BuildContext context){
    final r = ResponsiveHelper.of(context);
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppFonts.raleWay,
      scaffoldBackgroundColor: AppColors.darkBackground,
      drawerTheme: const DrawerThemeData(
        backgroundColor:  AppColors.darkBackground,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: r.fontSp.displayLarge, color: AppColors.white,fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: r.fontSp.displayMedium, color: AppColors.white,fontWeight: FontWeight.w500),
        displaySmall: TextStyle(fontSize: r.fontSp.displaySmall, color: AppColors.white,fontWeight: FontWeight.w400),
      ),
      cardColor: AppColors.darkBackground,
      cardTheme: CardThemeData(
        color: AppColors.darkCardColor,
        shape: AppShapes.roundedRectangleBorder,
        elevation: 1,
      ),
      appBarTheme:  AppBarTheme(
        color: AppColors.darkBackground,
        actionsIconTheme:  IconThemeData(
          color: AppColors.white,
          size: r.size.iconMd,
        ),
        elevation: 0,
        foregroundColor: AppColors.white,
        iconTheme: IconThemeData(
          color: AppColors.white,
          size:  r.size.iconMd,
        ),

      ),
      chipTheme: const ChipThemeData(
        backgroundColor:  AppColors.darkBackground,
        elevation: 0,

      ),
      iconTheme:  IconThemeData(
        color: AppColors.white,
        size:  r.size.iconMd,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.white,
          iconSize:  r.size.iconMd,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.darkBackground,
        onSurface: AppColors.white,
        primary: AppColors.orange,
      ),
    );
  }




}
