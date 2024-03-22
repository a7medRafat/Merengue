import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../config/colors/app_colors.dart';

class SquadItem extends StatelessWidget {
  const SquadItem({super.key, required this.number, required this.name});

  final String number;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.mHint.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: 40,
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: item(context,number),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              width: 40,
              padding: const EdgeInsets.all(10),
              decoration:  BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: item(context,name),
            ),
          ),

        ],
      ),
    );
  }

  Widget item(context, String text) =>


      Text(text,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12));
}
