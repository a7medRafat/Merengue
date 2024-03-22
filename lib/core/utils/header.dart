import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/style/icons_broken.dart';
import 'container.dart';

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
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: MContainer(
                  icon: IconBroken.Arrow___Left, iconColor: iconColor)),
          Expanded(
            child: Center(
              child: Text(leagueName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: color)),
            ),
          ),

        ],
      ),
    );
  }
}
