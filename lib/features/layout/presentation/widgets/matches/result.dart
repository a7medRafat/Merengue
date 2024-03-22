import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/colors/app_colors.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.matchTime, required this.matchDate});

  final String matchTime;
  final String matchDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                matchTime,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.mOrange),
              ),
              Text(
                matchDate,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.mGray,fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
