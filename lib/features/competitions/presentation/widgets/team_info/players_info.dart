import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/go/go.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/competitions/presentation/screens/player_info_screen.dart';
import 'package:meringiii/features/competitions/presentation/widgets/team_info/squad_item.dart';
import 'package:meringiii/features/competitions/presentation/widgets/team_info/team_container.dart';

class PlayersInfo extends StatelessWidget {
  const PlayersInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return TeamContainer(
      widget: BlocConsumer<CompetitionCubit, CompetitionState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Go.goTo(context, const PlayerInfoScreen());
                            CompetitionCubit.get(context).getPlayerInfo(
                                playerId: CompetitionCubit.get(context)
                                    .squadModel!
                                    .response![0]
                                    .players![index]
                                    .id!);
                          },
                          child: SquadItem(
                            number: CompetitionCubit.get(context)
                                .squadModel!
                                .response![0]
                                .players![index]
                                .number
                                .toString(),
                            name: CompetitionCubit.get(context)
                                .squadModel!
                                .response![0]
                                .players![index]
                                .name
                                .toString(),
                          ),
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: CompetitionCubit.get(context)
                        .squadModel!
                        .response![0]
                        .players!
                        .length),
              )
            ],
          );
        },
      ),
    );
  }
}
