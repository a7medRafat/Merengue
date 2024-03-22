import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/colors/app_colors.dart';

class PlayerName extends StatelessWidget {

  const PlayerName({super.key, required this.firstName, required this.lastName});
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(firstName, context),
        const SizedBox(height: 10),
        Text(lastName,
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget customText(text, context) => Text(text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.mHint.withOpacity(0.8)));
}
