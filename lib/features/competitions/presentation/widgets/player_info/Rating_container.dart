import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import '../../../../../core/utils/circle_percentage.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompetitionCubit, CompetitionState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ratingItem(
                    context: context,
                      title: 'SHOOTING',
                      value: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .statistics![0]
                          .shots!
                          .on
                          .toString(),
                      percent: (CompetitionCubit.get(context)
                              .playerModel!
                              .response![0]
                              .statistics![0]
                              .shots!
                              .on! /
                          CompetitionCubit.get(context)
                              .playerModel!
                              .response![0]
                              .statistics![0]
                              .shots!
                              .total!
                              .toInt()),
                      color: Colors.deepOrangeAccent),
                  ratingItem(
                      context: context,
                      title: 'PASSING',
                      value: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .statistics![0]
                          .passes!
                          .accuracy
                          .toString(),
                      percent: (CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .statistics![0]
                          .passes!
                          .accuracy!/100),
                      color: Colors.blue),
                  ratingItem(
                      context: context,
                      title: 'DRIBBLING',
                      value: CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .statistics![0]
                          .dribbles!
                          .success
                          .toString(),
                      percent: (CompetitionCubit.get(context)
                          .playerModel!
                          .response![0]
                          .statistics![0]
                          .dribbles!
                          .success! /
                          CompetitionCubit.get(context)
                              .playerModel!
                              .response![0]
                              .statistics![0]
                              .dribbles!
                              .attempts!
                              .toInt()),
                      color: Colors.deepPurple),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  ratingItem(
          {context,
          required String title,
          required String value,
          required double percent,
          required Color color}) =>
      Column(
        children: [
          CirclePercentage(color: color, value: value, percent: percent),
          const SizedBox(height: 5),
          Text(title, style: Theme.of(context).textTheme.bodyMedium)
        ],
      );
}
