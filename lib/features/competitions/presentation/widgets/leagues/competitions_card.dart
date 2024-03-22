import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';

// ignore: must_be_immutable
class CompetitionCard extends StatelessWidget {
  CompetitionCard(
      {super.key,
      required this.leagueLogo,
      required this.leagueName,
      required this.leagueNation,
      this.onPressed,
      required this.index});

  final String leagueLogo;
  final String leagueName;
  final String leagueNation;
  final int index;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompetitionCubit, CompetitionState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: CompetitionCubit.get(context).selectedLeague == index
                      ? AppColors.selectedContainer
                      : AppColors.containerColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      leagueLogo,
                      height: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(leagueName,
                        style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      leagueNation,
                      style: Theme.of(context).textTheme.bodySmall
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
