import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import 'package:meringiii/features/stats/presentation/widgets/Lineups/lineup.dart';
import 'package:meringiii/features/stats/presentation/widgets/players_statistics/players_stats.dart';
import '../../../../App/injuctoin_container.dart';
import '../../../../config/colors/app_colors.dart';
import '../../../../core/utils/header.dart';
import '../../../../core/utils/loading.dart';
import '../widgets/Stats/head_screen.dart';
import '../widgets/result/result_container.dart';
import '../widgets/Stats/stats_list.dart';
import '../widgets/topics.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var helper = sl<AppCubit>().liveModel!.response![index];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadWidget(
              headerWidget: Header(
                  leagueName: helper.league!.name!,
                  color: AppColors.mWhite,
                  iconColor: Theme.of(context).iconTheme.color!),
              resultWidget: ResultContainerWidget(
                stadiumName: helper.fixture!.venue!.name!,
                week: helper.league!.round.toString(),
                homeResult: helper.goals!.home.toString(),
                awayResult: helper.goals!.away.toString(),
                homeLogo: helper.teams!.home!.logo!,
                awayLogo: helper.teams!.away!.logo!,
                homeTeamName: helper.teams!.home!.name!,
                awayTeamName: helper.teams!.away!.name!,
                index: index,
              ),
              backImg: helper.league!.logo!,
            ),
            BlocConsumer<StatsCubit, StatsState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is GetStatsLoadingState) {
                  return const Loading();
                }
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: AppColors.mWhite,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Topics(),
                        if (StatsCubit.get(context).selectedTopic == 0)
                          const StatsList(),
                        if (StatsCubit.get(context).selectedTopic == 1)
                          const Lineup(),
                        if (StatsCubit.get(context).selectedTopic == 2)
                          const PlayersStats()
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
