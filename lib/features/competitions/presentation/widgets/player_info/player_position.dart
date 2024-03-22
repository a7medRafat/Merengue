import 'package:flutter/material.dart';
import '../../../../../config/colors/app_colors.dart';

class PlayerPosition extends StatelessWidget {

  const PlayerPosition({super.key, required this.position});
  final String position;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        customText('position: ', context),
        customText(position, context),
      ],
    );
  }

  Widget customText(text, context) => Text(text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.mHint.withOpacity(0.8)));
}
