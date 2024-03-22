import 'package:flutter/material.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import 'package:meringiii/features/layout/presentation/screens/layout_screen.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import '../config/style/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/competitions/presentation/screens/player_info_screen.dart';
import 'injuctoin_container.dart';

class MyApp extends StatelessWidget {
  const
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: sl<AppCubit>()
            // ..getAllLeagues()
            // ..liveMatch()
            ),
        BlocProvider.value(value: StatsCubit()),
        BlocProvider.value(value: CompetitionCubit()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          home: const Layout()),
    );
  }
}
