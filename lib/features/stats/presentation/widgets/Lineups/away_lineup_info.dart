import 'package:flutter/material.dart';
import 'package:meringiii/features/stats/presentation/widgets/Lineups/title.dart';

import '../../../../../config/colors/app_colors.dart';
import 'standard_text.dart';
import 'item.dart';

class AwayLineupInfo extends StatelessWidget {
  const AwayLineupInfo({super.key});

  // final String homeTeam;
  // final String awayTeam;
  // final String homeStrategy;
  // final String awayStrategy;
  // final String homeCoach;
  // final String awayCoach;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 10,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 5),
                  Text('liverpool',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(width: 10),
              Text('4-4-2',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: AppColors.mGray)),
            ],
          ),
          const Divider(),
          const TextTitle(text: 'COACH'),
          const Divider(),
          const StandardText(txt: 'joiner clop'),
          const Divider(),
          const TextTitle(text: 'STARTING XI'),
          const Divider(),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
              const Item(number: '10', playerName: 'messi'),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 5),
          const Divider(),
          const TextTitle(text: 'SUBSTITUTES'),
          const Divider(),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
              const Item(number: '10', playerName: 'messi'),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 5),
        ],
      ),
    );
  }
}
