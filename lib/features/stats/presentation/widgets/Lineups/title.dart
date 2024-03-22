import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(text, style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: AppColors.mHint
          )),
        ));
  }
}
