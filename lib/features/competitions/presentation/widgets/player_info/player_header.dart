import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {

  const PlayerHeader({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.4,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
            image: const NetworkImage(
                'https://as1.ftcdn.net/v2/jpg/01/23/73/48/1000_F_123734808_wkOHuCag5eSvLxp2D0E02mOowbe9uaph.jpg')),
        color: Colors.blue.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15)),
      ),
      child: widget
    );
  }
}
