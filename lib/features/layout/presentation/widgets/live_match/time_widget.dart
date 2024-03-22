import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';

import '../../../../../App/injuctoin_container.dart';
import '../../../../../config/colors/app_colors.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(
      {super.key,
      required this.homeResult,
      required this.awayResult,
      required this.resultColor,
      required this.dotColor,
      required this.timeColor,
      required this.index,
      });

  final String homeResult;
  final String awayResult;
  final Color resultColor;
  final Color dotColor;
  final Color timeColor;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            // sl<AppCubit>().fixtureModel!.response![index].goals!.home == null ?

            Row(
              children: [
                Text(homeResult.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: resultColor)),
                Text(
                  ' : ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: dotColor),
                ),
                Text(awayResult.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: resultColor)),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.mGray.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppColors.selectedContainer)),
              child: Text(
                '80\'',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: timeColor),
              ),
            )
          ],
        );
      },
    );
  }
}
