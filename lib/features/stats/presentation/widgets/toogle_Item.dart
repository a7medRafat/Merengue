import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class ToggleItem extends StatelessWidget {
  const ToggleItem({
    super.key,
    required this.toggleName,
    required this.topicColor,
    required this.textColor,
  });

  final String toggleName;
  final Color topicColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: topicColor,
          border: Border.all(color: AppColors.mWhite, width: 2),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Text(toggleName,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: textColor, fontSize: 12)),
    );
  }
}
