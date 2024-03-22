import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/core/utils/percentage.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';

class StatsIem extends StatelessWidget {
  const StatsIem({
    super.key,
    required this.homeStatsNumber,
    required this.awayStatsNumber,
    required this.statsTitle,
    required this.homePercent,
    required this.awayPercent,
  });

  final String homeStatsNumber;
  final String awayStatsNumber;
  final String statsTitle;

  final double homePercent;
  final double awayPercent;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatsCubit, StatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(homeStatsNumber,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.mBlack)),
                  Text(statsTitle,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black54, fontSize: 12)),
                  Text(awayStatsNumber,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.selectedContainer)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Percentage(
                      color: AppColors.mHint, percent: homePercent, rtl: true),
                  Percentage(
                      color: AppColors.selectedContainer,
                      percent: awayPercent,
                      rtl: false),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
