import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/layout/presentation/widgets/live_match/time_widget.dart';
import '../../../../../core/utils/carusel.dart';
import 'build_team.dart';

class LiveMatchItem extends StatelessWidget {
  const LiveMatchItem({
    super.key,
    required this.leagueName,
    required this.week,
    required this.homeResult,
    required this.awayResult,
    required this.homeTeamLogo,
    required this.homeTeamName,
    required this.awayTeamLogo,
    required this.awayTeamName,
    required this.index,
    required this.status,
    required this.carouselLength,
  });

  final String leagueName;
  final String week;
  final String homeResult;
  final String awayResult;
  final String homeTeamLogo;
  final String homeTeamName;
  final String awayTeamLogo;
  final String awayTeamName;
  final int index;
  final String status;
  final int carouselLength;

  @override
  Widget build(BuildContext context) {
    return Carousel(
      itemCount: carouselLength,
      widget: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: AppColors.liveMatchColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(leagueName,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.mWhite)),
                    const SizedBox(height: 5),
                    Text(week, style: Theme.of(context).textTheme.bodySmall!),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BuildTeam(
                      img: homeTeamLogo,
                      name: homeTeamName,
                      homeOrAway: 'Home',
                      color: AppColors.mWhite,
                      subColor: AppColors.mLightWhite,
                    ),
                    ResultWidget(
                      homeResult: homeResult,
                      awayResult: awayResult,
                      resultColor: AppColors.mWhite,
                      dotColor: AppColors.mWhite,
                      timeColor: AppColors.mWhite,
                      index: index,
                    ),
                    BuildTeam(
                      img: awayTeamLogo,
                      name: awayTeamName,
                      homeOrAway: 'Away',
                      color: AppColors.mWhite,
                      subColor: AppColors.mLightWhite,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
