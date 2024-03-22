import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/core/utils/loading.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import '../../../../../App/injuctoin_container.dart';
import '../../../../../core/utils/toast.dart';
import 'list_leagues_item.dart';

class ListLeagueWidget extends StatelessWidget {
  const ListLeagueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetLeaguesLoadingState) {
          return const Loading();
        } else if (state is GetLeaguesErrorState) {
          return StyledToast.show(context: context, text: state.error);
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 50,
              child: SizedBox(
                height: 50,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            sl<AppCubit>().getFixture(
                                leagueId: sl<AppCubit>().topLeagues[index].id!);
                            sl<AppCubit>().changeIndex(index);
                          },
                          child: LeagueItem(
                            leagueName: sl<AppCubit>().topLeagues[index].name!,
                            leagueImage: sl<AppCubit>().topLeagues[index].logo!,
                            index: index,
                          ),
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: sl<AppCubit>().topLeagues.length),
              ),
            ),
          );
        }
      },
    );
  }
}
