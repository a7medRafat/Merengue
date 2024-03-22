import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/core/go/go.dart';
import 'package:meringiii/core/utils/header.dart';
import 'package:meringiii/core/utils/loading.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/competitions/presentation/screens/team_info_screen.dart';
import 'package:meringiii/features/competitions/presentation/widgets/table/build_table.dart';
import '../widgets/table/table_title.dart';

class TableResultScreen extends StatelessWidget {
  const TableResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CompetitionCubit, CompetitionState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Header(
                    leagueName: 'Result table',
                    color: AppColors.mLightWhite,
                    iconColor: AppColors.mLightWhite),
                const TableTitle(),
                const SizedBox(height: 15),
                BlocConsumer<CompetitionCubit, CompetitionState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is GetStandingsLoadingState ||
                        CompetitionCubit.get(context).standingsModel == null) {
                      return const Center(child: Loading());
                    }
                    return Expanded(
                      child: SizedBox(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              var helper = CompetitionCubit.get(context)
                                  .standingsModel!
                                  .response![0]
                                  .league!
                                  .standings![index];
                              return GestureDetector(
                                onTap: () {
                                  CompetitionCubit.get(context)
                                      .getTeamInfo(teamId: helper.team!.id!);
                                  CompetitionCubit.get(context)
                                      .getTeamSquad(teamId: helper.team!.id!);
                                  Go.goTo(context, TeamInfoScreen());
                                },
                                child: BuildTable(
                                  rank: helper.rank!.toString(),
                                  teamLogo: helper.team!.logo.toString(),
                                  teamName: helper.team!.name!,
                                  play: helper.all!.played.toString(),
                                  win: helper.all!.win.toString(),
                                  draw: helper.all!.draw.toString(),
                                  lose: helper.all!.lose.toString(),
                                  goals: helper.all!.goals!.afor.toString(),
                                  pts: helper.points.toString(),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10),
                            itemCount: CompetitionCubit.get(context)
                                .standingsModel!
                                .response![0]
                                .league!
                                .standings!
                                .length),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
