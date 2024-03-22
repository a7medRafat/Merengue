import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class StyledToast {
  static show({required context, required String text}) {
    showToast(
      text,
      context: context,
      textStyle: Theme
          .of(context)
          .textTheme
          .bodySmall,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.slideFromBottomFade,
      position: StyledToastPosition.bottom,
      animDuration: const Duration(seconds: 1),
      duration: const Duration(seconds: 4),
      curve: Curves.elasticOut,
      reverseCurve: Curves.linear,
    );
  }
}
