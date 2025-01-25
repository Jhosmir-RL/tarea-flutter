import 'package:flutter/material.dart';
import 'package:semana3/core/colors.dart';

class AppStyles {
  static LinearGradient mainBgGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0, 1],
      colors: [AppColors.mainBg, AppColors.contranstBg]);

  static LinearGradient secondaryBgGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0,
        0.5,
        0.5,
        1
      ],
      colors: [
        AppColors.mainBg,
        AppColors.contranstBg,
        Colors.white,
        Colors.white
      ]);

  static TextStyle title =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white);
}
