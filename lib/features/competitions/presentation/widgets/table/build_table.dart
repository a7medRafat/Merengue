import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../../../config/colors/app_colors.dart';

class BuildTable extends StatelessWidget {
  const BuildTable(
      {super.key,
      required this.rank,
      required this.teamLogo,
      required this.teamName,
      required this.play,
      required this.win,
      required this.draw,
      required this.lose,
      required this.goals,
      required this.pts});

  final String rank;
  final String teamLogo;
  final String teamName;
  final String play;
  final String win;
  final String draw;
  final String lose;
  final String goals;
  final String pts;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    rank,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Image.network(
                          teamLogo,
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Text(teamName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  item(play, context),
                  item(win, context),
                  item(draw, context),
                  item(lose, context),
                  item(goals, context),
                  item(pts, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget item(String text, context) =>
      Text(text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          );
}
