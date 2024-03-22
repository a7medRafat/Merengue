import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import 'package:meringiii/features/stats/presentation/widgets/Stats/stats_item.dart';

class StatsList extends StatelessWidget {
  const StatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatsCubit, StatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (StatsCubit.get(context).statsModel!.response!.isEmpty) {
          return Text('NO STATS');
        }
        return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var home = StatsCubit.get(context)
                  .statsModel!
                  .response![0]
                  .statistics![index];
              var away = StatsCubit.get(context)
                  .statsModel!
                  .response![1]
                  .statistics![index];

              if (StatsCubit.get(context).statsModel!.response!.isEmpty) {
                return const Text('No Stats');
              } else {
                return StatsIem(
                  homeStatsNumber: home.value.toString() == 'null' ? '0' : home.value.toString(),
                  awayStatsNumber: away.value.toString() == 'null' ? '0' : away.value.toString(),
                  statsTitle: home.type.toString(),
                  homePercent: StatsCubit.get(context).converter(
                      homeValue: home.value.toString(),
                      awayValue: away.value.toString(),
                      isHome: true),
                  awayPercent: StatsCubit.get(context).converter(
                      homeValue: home.value.toString(),
                      awayValue: away.value.toString(),
                      isHome: false),
                );
              }
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: StatsCubit.get(context)
                .statsModel!
                .response![0]
                .statistics!
                .length);
      },
    );
  }
}
