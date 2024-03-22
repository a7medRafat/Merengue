import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/utils/loading.dart';
import 'package:meringiii/features/stats/presentation/widgets/Lineups/away_lineup_info.dart';

import '../../../cubit/stats_cubit.dart';
import 'home_lineup_info.dart';

class Lineup extends StatelessWidget {
  const Lineup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatsCubit, StatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if(state is GetLineupLoadingState){
          return Loading();
        }
        return const Row(
          children: [
            HomeLineupInfo(),
            SizedBox(width: 10),
            AwayLineupInfo()
          ],
        );
      },
    );
  }
}
