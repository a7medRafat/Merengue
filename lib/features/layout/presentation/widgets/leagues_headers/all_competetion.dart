import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';

class AllCompetitions extends StatelessWidget {
  const AllCompetitions({super.key, required this.function});

  final function;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: function,
          child: Container(
            height: 50,
              decoration: BoxDecoration(
                  color: AppCubit.get(context).selectedIndex == -1
                      ? AppColors.selectedContainer
                      : AppColors.mWhite,
                  border: AppCubit.get(context).selectedIndex == -1
                      ? Border.all(color: AppColors.mWhite, width: 2)
                      : null,
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(15),
              child: Text('all Competitions',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppCubit.get(context).selectedIndex == -1
                          ? AppColors.mWhite
                          : AppColors.mGray))),
        );
      },
    );
  }
}
