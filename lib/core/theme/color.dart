
import 'dart:ui';

import 'package:flutter/material.dart' show LinearGradient,Alignment;

class AppColors{
  AppColors._();

  static const Color orange = Color(0xFFFF9C1A);
  static const Color red = Color(0xFFEC1B09);

  static const Color lightBackground = Color(0xFFF2F5F9);

  static const Color darkBackground = Color(0xFF0f1011);
  static const Color darkCardColor= Color(0xFF1E1E1E);

  static const Color lightGrey = Color(0xFFE1E8EF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);



  // 🔹 Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [orange, red],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}