import 'package:flutter/material.dart';

class BuildClubInfo extends StatelessWidget {
  const BuildClubInfo(
      {super.key,
      required this.teamNameOrVenue,
      required this.foundedOrAddress,
      required this.countryOrCapacity});

  final String teamNameOrVenue;
  final String foundedOrAddress;
  final String countryOrCapacity;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Flexible(child: item(context, teamNameOrVenue)),
        const VerticalDivider(),
        Flexible(child: item(context, foundedOrAddress)),
        const VerticalDivider(),
        Flexible(child: item(context, countryOrCapacity)),
      ],
    ));
  }

  Widget item(context, String text) => Text(text,
      style: Theme.of(context).textTheme.bodyMedium);
}
