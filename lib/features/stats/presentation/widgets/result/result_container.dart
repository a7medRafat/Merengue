import 'package:flutter/material.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../../../layout/presentation/widgets/live_match/build_team.dart';
import '../../../../layout/presentation/widgets/live_match/time_widget.dart';

class ResultContainerWidget extends StatelessWidget {
  const ResultContainerWidget({
    super.key,
    required this.stadiumName,
    required this.week,
    required this.homeResult,
    required this.awayResult,
    required this.homeLogo,
    required this.awayLogo,
    required this.homeTeamName,
    required this.awayTeamName,
    required this.index,
  });

  final String stadiumName;
  final String week;
  final String homeTeamName;
  final String awayTeamName;
  final String homeResult;
  final String awayResult;
  final String homeLogo;
  final String awayLogo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: 200,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(stadiumName,
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.mBlack, fontSize: 12)),
                    const SizedBox(height: 5),
                    Text(week,
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.mGray)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BuildTeam(
                      img: homeLogo,
                      name: homeTeamName,
                      homeOrAway: 'Home',
                      color: AppColors.mBlack,
                      subColor: AppColors.mGray,
                    ),
                    ResultWidget(
                        homeResult: homeResult,
                        awayResult: awayResult,
                        resultColor: AppColors.mBlack,
                        dotColor: AppColors.mBlack,
                        timeColor: AppColors.mBlack,
                        index: index,
                    ),
                    BuildTeam(
                      img: awayLogo,
                      name: awayTeamName,
                      homeOrAway: 'Away',
                      color: AppColors.mBlack,
                      subColor: AppColors.mGray,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
