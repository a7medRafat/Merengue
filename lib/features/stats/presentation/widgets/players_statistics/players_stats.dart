import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/stats_cubit.dart';

class PlayersStats extends StatelessWidget {
  const PlayersStats({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatsCubit, StatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                const Text('Players statistics here'),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 5);
      },
    );
  }
}
