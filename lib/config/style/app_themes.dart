import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.darkModeColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mOrange),
    useMaterial3: true,
    fontFamily: 'Poppins',
    iconTheme: IconThemeData(color: AppColors.mWhite.withOpacity(0.7), size: 18),
    textTheme: TextTheme(
      /// titles ///
      titleLarge: (TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.mWhite,
      )),
      titleMedium: (TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppColors.mWhite,
      )),
      titleSmall: TextStyle(
        color: AppColors.mWhite,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),

      /// body ///

      bodyLarge: TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.mWhite),
      bodyMedium: TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.mWhite),
      bodySmall: TextStyle(
        color: AppColors.mLightWhite,
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),


      /// small ///
    ),
  );
}
