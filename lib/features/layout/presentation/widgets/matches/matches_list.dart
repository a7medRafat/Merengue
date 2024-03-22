import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import 'package:meringiii/features/stats/presentation/screens/stats_screen.dart';
import '../../../../../App/injuctoin_container.dart';
import '../../../../../core/go/go.dart';
import '../../../../../core/utils/loading.dart';
import 'match_item.dart';
import 'package:intl/intl.dart';

class MatchList extends StatelessWidget {
  const MatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetFixturesLoadingState) {
          return const Loading();
        } else if (state is GetFixturesErrorState) {
          return const Text('a7aaaaaaa');
        } else {
          return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                dynamic helper = sl<AppCubit>().fixtureModel!.response![index];
                return GestureDetector(
                  onTap: () {
                    Go.goTo(context, StatsScreen(index: index));
                  },
                  child: MatchItem(
                    teamHome: helper.teams!.home!.name!,
                    teamAway: helper.teams!.away!.name!,
                    matchTime: DateFormat.Hm()
                        .format(DateTime.parse(helper.fixture!.date!)),
                    matchDate: DateFormat('d MMM')
                        .format(DateTime.parse(helper.fixture!.date!)),
                    homeLogo: helper.teams!.home!.logo!,
                    awayLogo: helper.teams!.away!.logo!,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: sl<AppCubit>().fixtureModel!.response!.length);
        }
      },
    );
  }
}
// 1145157

// 3802

// 1144475
