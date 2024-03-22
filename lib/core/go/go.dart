import 'package:flutter/material.dart';

class Go {
  static void goTo(context, widget) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );

  static void goAndFinish(context, widget) => Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context) => widget), (route) => false);
}
