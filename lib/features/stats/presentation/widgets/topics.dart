import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import 'package:meringiii/features/stats/presentation/widgets/toogle_Item.dart';

class Topics extends StatelessWidget {
  const Topics({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatsCubit, StatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 50,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        StatsCubit.get(context).changeTopicIndex(index);
                        print(index);
                      },
                      child: ToggleItem(
                        toggleName: StatsCubit.get(context).topicsName[index],
                        topicColor: StatsCubit.get(context).selectedTopic == index
                            ? AppColors.selectedContainer
                            : AppColors.mGray.withOpacity(0.5),
                        textColor: StatsCubit.get(context).selectedTopic == index
                            ? AppColors.mWhite
                            : AppColors.mGray,
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(width: 5),
                itemCount: 3),
          ),
        );
      },
    );
  }
}
