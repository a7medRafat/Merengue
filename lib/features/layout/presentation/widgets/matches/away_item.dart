import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class AwayItem extends StatelessWidget {
  const AwayItem({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            image,
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 8),
          Expanded(
              child: Text(
            name,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.mHint
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.start,
          )),
        ],
      ),
    );
  }
}
