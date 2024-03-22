import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class TableTitle extends StatelessWidget {
  const TableTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mBlue
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                item('Pos', context),
                const SizedBox(
                  width: 20,
                ),
                item('club', context),
      
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                item('PL', context),
                item('W', context),
                item('D', context),
                item('L', context),
                item('GD', context),
                item('Pts', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget item(String text, context) =>
      Text(text, style: Theme.of(context).textTheme.bodySmall!);
}
