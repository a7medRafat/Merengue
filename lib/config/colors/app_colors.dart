import 'package:flutter/material.dart';

class AppColors {
  // static Color scaffoldColor = const Color(0xffececec);
  static Color selectedContainer = const Color(0xffff2882);
  static Color mBlack = Colors.black;
  static Color mWhite = Colors.white;
  static Color mLightWhite = Colors.white54;
  static Color mLightBlack = Colors.black54;
  static Color mGray = const Color(0xFFC4C4C4);
  static Color mOrange = Colors.orangeAccent.withOpacity(0.1);
  static Color mBlue = Colors.blue.withOpacity(0.1);
  static Color mHint = const Color(0xFF4E4E4E);
  static Color liveMatchColor = const Color(0xFF370439).withOpacity(0.4);
  static Color liveColor = const Color(0xff202020);
  static Color darkModeColor = const Color(0xff121212);
  static Color containerColor = const Color(0xff2c2c2c);
  static Color lightContainerColor = const Color(0xFF656565);
  static Color mResult = Colors.deepOrangeAccent;
  static Color rectangle3 = const Color(0xFFC4C4C4);
  static Color blackIcon =  Colors.black.withOpacity(0.5);
  static Color whiteIcon =  Colors.white.withOpacity(0.5);

  static Color rectangle4 = Colors.black;

  RadialGradient grediant = const RadialGradient(
      center: Alignment.topCenter,
      radius: 0.8,
      colors: [Color(0xffffe1e0), Color(0xffE1F6F4)]);

  Shader instaGradient = const LinearGradient(
          colors: [Color(0xffF9CE34), Color(0xffee2a7b), Color(0xff6228d7)])
      .createShader(const Rect.fromLTWH(0.0, 0.0, 200, 70.0));
}
