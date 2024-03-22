import 'package:flutter/cupertino.dart';

class PlayerImg extends StatelessWidget {
  const PlayerImg({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Image.network(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
