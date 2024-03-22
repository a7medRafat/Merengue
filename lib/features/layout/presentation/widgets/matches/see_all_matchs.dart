import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

import '../side_text_widget.dart';

class SeeAllMatchs extends StatelessWidget {
  const SeeAllMatchs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(
          'see all',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.mOrange),
        )
      ],
    );
  }
}
