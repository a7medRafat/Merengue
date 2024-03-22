import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/layout/presentation/widgets/live_match/time_widget.dart';
import 'package:meringiii/features/stats/cubit/stats_cubit.dart';
import 'package:meringiii/features/stats/presentation/screens/stats_screen.dart';
import '../../../../../App/injuctoin_container.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/go/go.dart';
import '../../../cubit/app_cubit.dart';
import 'build_team.dart';

class LiveMatchList extends StatelessWidget {
  const LiveMatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: 250,
          child: CarouselSlider.builder(
            itemCount: sl<AppCubit>().liveModel!.response!.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              var helper = sl<AppCubit>().liveModel!.response![itemIndex];
              return InkWell(
                onTap: (){
                  print('=====>${helper.fixture!.id}');
                  StatsCubit.get(context).getStats(fixId: helper.fixture!.id);
                  StatsCubit.get(context).getLineup(fixId: helper.fixture!.id);
                  Go.goTo(context, StatsScreen(index: itemIndex));
                },
                child: Container(
                    width: 300,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.bottomLeft,
                          image: NetworkImage(
                            helper.league!.logo!,
                          ),
                          filterQuality: FilterQuality.medium,
                          opacity: 0.2),
                      color:  AppColors.liveColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(helper.league!.name!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.mWhite)),
                              const SizedBox(height: 5),
                              Text(helper.league!.round.toString(),
                                  style: Theme.of(context).textTheme.bodySmall!),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BuildTeam(
                                img: helper.teams!.home!.logo!,
                                name: helper.teams!.home!.name!,
                                homeOrAway: 'Home',
                                color: AppColors.mWhite,
                                subColor: AppColors.mLightWhite,
                              ),
                              ResultWidget(
                                homeResult: helper.goals!.home!.toString(),
                                awayResult: helper.goals!.away!.toString(),
                                resultColor: AppColors.mWhite,
                                dotColor: AppColors.mWhite,
                                timeColor: AppColors.mWhite,
                                index: itemIndex,
                              ),
                              BuildTeam(
                                img: helper.teams!.away!.logo!,
                                name: helper.teams!.home!.name!,
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
            },
            options: CarouselOptions(
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enlargeFactor: 0.2,
                viewportFraction: 0.85,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                aspectRatio: 16 / 9,
                padEnds: false,
                onPageChanged: (index, reason) {}),
          ),
        );
      },
    );
  }
}
