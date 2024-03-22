import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Percentage extends StatelessWidget {
  const Percentage(
      {super.key,
      required this.color,
      required this.percent,
      required this.rtl});

  final Color color;
  final double percent;
  final bool rtl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LinearPercentIndicator(
        lineHeight: 7.0,
        restartAnimation: true,
        percent: percent,
        progressColor: color,
        isRTL: rtl,
        barRadius: const Radius.circular(50),
        backgroundColor: AppColors.mGray.withOpacity(0.3),
      ),
    );
  }
}
