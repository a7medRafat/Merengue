import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/competitions/presentation/widgets/team_info/simple_toggle.dart';
import '../../../../core/utils/header.dart';
import '../../../../core/utils/loading.dart';

class TeamInfoScreen extends StatelessWidget {
  const TeamInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CompetitionCubit, CompetitionState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetTeamLoadingState ||
              CompetitionCubit.get(context).teamModel == null ||
              CompetitionCubit.get(context).squadModel == null) {
            return const Loading();
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.1),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken),
                              image: NetworkImage(CompetitionCubit.get(context)
                                  .teamModel!
                                  .response![0]
                                  .venue!
                                  .image!))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                              height: 150,
                              width: 150,
                              CompetitionCubit.get(context)
                                  .teamModel!
                                  .response![0]
                                  .team!
                                  .logo!),
                          const SizedBox(height: 5),
                          Text(
                              CompetitionCubit.get(context)
                                  .teamModel!
                                  .response![0]
                                  .team!
                                  .name!,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: AppColors.mWhite)),
                        ],
                      ),
                    ),
                    Header(
                        leagueName: '',
                        color: AppColors.mBlack,
                        iconColor: AppColors.mWhite),
                  ],
                ),
                const SizedBox(height: 20),
                const SimpleToggle()
              ],
            ),
          );
        },
      ),
    );
  }
}
