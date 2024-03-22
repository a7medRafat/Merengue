import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class NoLiveMatch extends StatelessWidget {
  const NoLiveMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Text('no live matches right now',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.mGray)),
      ),
    );
  }
}
