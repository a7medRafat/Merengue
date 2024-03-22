import 'package:flutter/cupertino.dart';
import 'package:meringiii/features/competitions/presentation/widgets/player_info/player_container.dart';

class PlayerAge extends StatelessWidget {
  const PlayerAge(
      {super.key,
      required this.rate,
      required this.played,
      required this.goals});

  final String rate;
  final String played;
  final String goals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PlayerContainer(title: 'Played', value: played),
          PlayerContainer(title: 'Goals', value: goals),
          PlayerContainer(title: 'Rating', value: rate),
        ],
      ),
    );
  }
}
