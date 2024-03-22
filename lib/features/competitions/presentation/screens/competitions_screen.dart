import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/go/go.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/competitions/presentation/screens/table_result.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import '../../../../App/injuctoin_container.dart';
import '../../../layout/presentation/widgets/side_text_widget.dart';
import '../widgets/leagues/competitions_card.dart';

class CompetitionsScreen extends StatelessWidget {
  const CompetitionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: SideTextWidget(text: 'Top competitions'),
              // ),
              Expanded(
                child: SizedBox(
                  child: GridView.count(
                    padding: const EdgeInsets.all(8),
                    crossAxisCount: 2,
                    children: List.generate(sl<AppCubit>().topLeagues.length,
                        (index) {
                      return BlocConsumer<CompetitionCubit, CompetitionState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return CompetitionCard(
                            onPressed: () {
                              CompetitionCubit.get(context).changeLeague(index);
                              Go.goTo(context, const TableResultScreen());
                              CompetitionCubit.get(context).getStandings(
                                  id: sl<AppCubit>().topLeagues[index].id!.toInt());
                            },
                            leagueLogo: sl<AppCubit>().topLeagues[index].logo!,
                            leagueName: sl<AppCubit>().topLeagues[index].name!,
                            leagueNation:
                                sl<AppCubit>().topLeagues[index].type!,
                            index: index,
                          );
                        },
                      );
                    }),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
