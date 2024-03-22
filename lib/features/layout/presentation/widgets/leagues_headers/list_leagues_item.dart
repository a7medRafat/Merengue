import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';

class LeagueItem extends StatelessWidget {
  const LeagueItem(
      {super.key,
      required this.leagueName,
      required this.leagueImage,
      required this.index});

  final String leagueName;
  final String leagueImage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                color: AppCubit.get(context).selectedIndex == index
                    ? AppColors.selectedContainer
                    : AppColors.containerColor,
                border: AppCubit.get(context).selectedIndex == index
                    ? Border.all(color: AppColors.lightContainerColor, width: 2)
                    : null,
                borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(leagueImage),
                const SizedBox(width: 8),
                Text(leagueName,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppCubit.get(context).selectedIndex == index
                            ? AppColors.mWhite
                            : AppColors.mGray))
              ],
            ),
          ),
        );
      },
    );
  }
}
