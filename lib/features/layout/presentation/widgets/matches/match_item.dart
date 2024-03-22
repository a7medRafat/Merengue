import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/layout/presentation/widgets/matches/home_item.dart';
import 'package:meringiii/features/layout/presentation/widgets/matches/result.dart';
import 'away_item.dart';

class MatchItem extends StatelessWidget {
  const MatchItem(
      {super.key,
      required this.teamHome,
      required this.teamAway,
      required this.matchTime,
      required this.matchDate,
      required this.homeLogo,
      required this.awayLogo});

  final String teamHome;
  final String teamAway;
  final String matchTime;
  final String matchDate;
  final String homeLogo;
  final String awayLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.mWhite),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HomeItem(image: homeLogo, name: teamHome),
          const SizedBox(width: 5),
          Result(matchTime: matchTime, matchDate: matchDate),
          const SizedBox(width: 5),
          AwayItem(image: awayLogo, name: teamAway)
        ],
      ),
    );
  }
}
