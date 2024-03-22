import 'package:flutter/material.dart';
import 'package:meringiii/config/style/icons_broken.dart';
import 'package:meringiii/core/utils/container.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.leagueName,
      required this.color,
      required this.iconColor});

  final String leagueName;
  final Color color;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: MContainer(
                  icon: IconBroken.Arrow___Left, iconColor: iconColor)),
          Text(leagueName,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: color)),
          MContainer(icon: Icons.more_vert, iconColor: iconColor),
        ],
      ),
    );
  }
}
