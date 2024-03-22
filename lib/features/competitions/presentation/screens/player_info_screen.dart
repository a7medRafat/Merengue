import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/utils/loading.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/competitions/presentation/widgets/player_info/player_age.dart';
import 'package:meringiii/features/layout/presentation/widgets/side_text_widget.dart';
import '../widgets/player_info/Rating_container.dart';
import '../widgets/player_info/player_header.dart';
import '../widgets/player_info/player_height_weight.dart';
import '../widgets/player_info/player_name.dart';
import '../widgets/player_info/player_position.dart';

class PlayerInfoScreen extends StatelessWidget {
  const PlayerInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CompetitionCubit, CompetitionState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetPlayerInfoLoadingState ||
              CompetitionCubit.get(context).playerModel == null) {
            return const Loading();
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                PlayerHeader(
                    widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    PlayerName(
                        firstName: CompetitionCubit.get(context)
                            .playerModel!
                            .response![0]
                            .player!
                            .firstname!,
                        lastName: CompetitionCubit.get(context)
                            .playerModel!
                            .response![0]
                            .player!
                            .lastname!),
                    PlayerPosition(
                        position: CompetitionCubit.get(context)
                            .playerModel!
                            .response![0]
                            .statistics![0]
                            .games!
                            .position!),
                    PlayerHeightWeight(
                      height: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .player!
                          .height!,
                      weight: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .player!
                          .weight!,
                      age: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .player!
                          .age
                          .toString(),
                      playerImg: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .player!
                          .photo!,
                    )
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PlayerAge(
                          rate: double.parse(CompetitionCubit.get(context)
                                  .playerModel!
                                  .response![0]
                                  .statistics![0]
                                  .games!
                                  .rating!)
                              .toStringAsFixed(1),
                          played: CompetitionCubit.get(context)
                              .playerModel!
                              .response![0]
                              .statistics![0]
                              .games!
                              .appearences
                              .toString(),
                          goals: CompetitionCubit.get(context)
                              .playerModel!
                              .response![0]
                              .statistics![0]
                              .goals!
                              .total
                              .toString()),
                      const SideTextWidget(text: 'Player Rating'),
                      const RatingContainer()
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
