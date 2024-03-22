import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/features/competitions/cubit/competition_cubit.dart';
import 'package:meringiii/features/competitions/presentation/widgets/team_info/team_container.dart';

import 'build_club_info.dart';

class ClubInfo extends StatelessWidget {
  const ClubInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return TeamContainer(
        widget: BlocConsumer<CompetitionCubit, CompetitionState>(
      listener: (context, state) {},
      builder: (context, state) {
        var helper = CompetitionCubit.get(context).teamModel!.response![0];
        return Column(
          children: [
            BuildClubInfo(
                teamNameOrVenue: helper.team!.code!,
                foundedOrAddress: helper.team!.founded.toString(),
                countryOrCapacity: helper.team!.country!),
            const SizedBox(height: 15),
            BuildClubInfo(
                teamNameOrVenue: helper.venue!.name!,
                foundedOrAddress: helper.venue!.address!,
                countryOrCapacity: helper.venue!.capacity.toString()),
          ],
        );
      },
    ));
  }
}
