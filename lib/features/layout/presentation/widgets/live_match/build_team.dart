import 'package:flutter/material.dart';

class BuildTeam extends StatelessWidget {
  const BuildTeam(
      {super.key,
      required this.img,
      required this.name,
      required this.homeOrAway,
      required this.color,
      required this.subColor});

  final String img;
  final String name;
  final String homeOrAway;
  final Color color;
  final Color subColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            img,
            height: 60,
            width: 60,
          ),
          const SizedBox(height: 5),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(color: color,fontSize:12 ),
          ),
          const SizedBox(height: 3),
          Text(
            homeOrAway,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: subColor),
          ),
        ],
      ),
    );
  }
}
