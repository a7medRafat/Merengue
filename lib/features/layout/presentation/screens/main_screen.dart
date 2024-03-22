import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import '../../../../App/injuctoin_container.dart';
import '../../../../core/utils/loading.dart';
import '../../cubit/app_cubit.dart';
import '../widgets/leagues_headers/list_leagues_widget.dart';
import '../widgets/live_match/live_match_list.dart';
import '../widgets/live_match/no_live.dart';
import '../widgets/matches/matches_list.dart';
import '../widgets/search_widget/app_name.dart';
import '../widgets/side_text_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetLiveMatchesLoadingState) {
            return const Loading();
          }
          return ListView(
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              const AppNameAndSearch(),
              const ListLeagueWidget(),
              const SideTextWidget(text: 'Live Match'),
              sl<AppCubit>().liveModel != null
                  ? const LiveMatchList()
                  : const NoLiveMatch(),
              const SideTextWidget(text: 'Match day'),
              if (sl<AppCubit>().fixtureModel != null) const MatchList()
            ],
          );
        },
      ),
    );
  }
}
