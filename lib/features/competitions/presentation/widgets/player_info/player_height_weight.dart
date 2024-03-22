import 'package:flutter/material.dart';
import 'package:meringiii/features/competitions/presentation/widgets/player_info/player_img.dart';
import '../../../../../config/colors/app_colors.dart';

class PlayerHeightWeight extends StatelessWidget {
  const PlayerHeightWeight(
      {super.key,
      required this.height,
      required this.weight,
      required this.age, required this.playerImg});

  final String height;
  final String weight;
  final String age;
  final String playerImg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            customText('height', context),
            Text(
              height,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        Column(
          children: [
            customText('weight', context),
            Text(
              weight,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        Column(
          children: [
            customText('Age', context),
            Text(
              age,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        PlayerImg(img: playerImg)
      ],
    );
  }

  Widget customText(text, context) => Text(text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.mHint.withOpacity(0.8)));
}
