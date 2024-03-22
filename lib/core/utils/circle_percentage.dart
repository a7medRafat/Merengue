import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CirclePercentage extends StatelessWidget {
  const CirclePercentage({super.key, required this.color, required this.value, required this.percent});
  final Color color;
  final String value;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 40.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 5.0,
      percent: percent,
      center: Text(
        value,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.white30,
      progressColor: color,
    );
  }
}
