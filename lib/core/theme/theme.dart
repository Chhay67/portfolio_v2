import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBarTheme, BorderRadius, CardThemeData, ColorScheme, DrawerThemeData, FontWeight, IconButton, IconButtonThemeData, RoundedRectangleBorder, TextStyle, TextTheme, ThemeData;
import 'package:portfolio_v2/core/theme/shape.dart';

import '../utils/app_fonts.dart';
import 'color.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightMode = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightBackground,
    fontFamily: AppFonts.raleWay,
    textTheme: lightTextTheme,
    cardColor: AppColors.white,
    cardTheme: CardThemeData(
      color: AppColors.white,
      shape: AppShapes.roundedRectangleBorder,
      elevation: 1,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor:  AppColors.lightBackground,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.lightBackground,
      actionsIconTheme:  IconThemeData(
        color: AppColors.black,
        size: 24,
      ),
      elevation: 0,
      foregroundColor: AppColors.black,
      iconTheme: IconThemeData(
        color: AppColors.black,
        size: 24,
      ),

    ),
    iconTheme: const IconThemeData(
      color: AppColors.black,
      size: 24,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.black,
        iconSize: 24,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightBackground,
        onSurface: AppColors.white,
        primary: AppColors.orange,
    ),

  );

  static ThemeData darkMode = ThemeData(
    useMaterial3: true,
    fontFamily: AppFonts.raleWay,
    scaffoldBackgroundColor: AppColors.darkBackground,
    drawerTheme: const DrawerThemeData(
      backgroundColor:  AppColors.darkBackground,
    ),
    textTheme: darkTextTheme,
    cardColor: AppColors.darkBackground,
    cardTheme: CardThemeData(
      color: AppColors.darkCardColor,
      shape: AppShapes.roundedRectangleBorder,
      elevation: 1,
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.darkBackground,
      actionsIconTheme:  IconThemeData(
        color: AppColors.white,
        size: 24,
      ),
      elevation: 0,
      foregroundColor: AppColors.white,
      iconTheme: IconThemeData(
        color: AppColors.white,
        size: 24,
      ),

    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
      size: 24,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.white,
        iconSize: 24,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkBackground,
      onSurface: AppColors.white,
      primary: AppColors.orange,
    ),
  );

  static const TextTheme lightTextTheme =  TextTheme(
    displayLarge: TextStyle(fontSize: 24, color: AppColors.black,fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 20, color: AppColors.black,fontWeight: FontWeight.w500),
    displaySmall: TextStyle(fontSize: 18, color: AppColors.black,fontWeight: FontWeight.w400),
  );
  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 24, color: AppColors.white,fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 20, color: AppColors.white,fontWeight: FontWeight.w500),
    displaySmall: TextStyle(fontSize: 18,color: AppColors.white, fontWeight: FontWeight.w400),
  );
}
