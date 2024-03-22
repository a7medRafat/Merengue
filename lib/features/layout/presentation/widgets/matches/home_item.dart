import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.8,
      child: Row(
        children: [
          Expanded(
              child: Text(name,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.mHint
                  ),
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis)),
          const SizedBox(width: 8),
          Image.network(
            image,
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }
}
