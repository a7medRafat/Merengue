import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class StandardText extends StatelessWidget {

  const StandardText({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(txt, style: Theme
        .of(context)
        .textTheme
        .bodySmall!.copyWith(
      color: AppColors.mHint
    ));
  }
}
