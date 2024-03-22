import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meringiii/features/stats/presentation/widgets/Lineups/standard_text.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.playerName});

  final String number;
  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        StandardText(txt: number),
        const SizedBox(width: 15),
        StandardText(txt: playerName),
      ],
    );
  }
}
