import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import 'package:meringiii/features/stats/presentation/widgets/Lineups/title.dart';
import '../../../../../config/colors/app_colors.dart';
import 'standard_text.dart';
import 'item.dart';

class HomeLineupInfo extends StatelessWidget {
  const HomeLineupInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var home = StatsCubit.get(context).lineupModel!.response![0];
    return BlocConsumer<StatsCubit, StatsState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                      Text(home.team!.name!,
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Text(home.formation.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppColors.mGray)),
                ],
              ),
              const Divider(),
              const TextTitle(text: 'COACH'),
              const Divider(),
               StandardText(txt: StatsCubit.get(context).lineupModel!.response![0].coach!.name!),
              const Divider(),
              const TextTitle(text: 'STARTING XI'),
              const Divider(),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var home =
                        StatsCubit.get(context).lineupModel!.response![0];
                    return Item(
                        number: home.startXI![index].player!.number.toString(),
                        playerName: home.startXI![index].player!.name!);
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount:11),
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
      },
    );
  }
}
