import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

import 'club_Info.dart';
import 'players_info.dart';

class SimpleToggle extends StatefulWidget {
  const SimpleToggle({super.key});

  @override
  State<SimpleToggle> createState() => _SimpleToggleState();
}

List<bool> isSelected = [true, false];
int currentIndex = 0;

class _SimpleToggleState extends State<SimpleToggle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleButtons(
          selectedColor: AppColors.mHint,
          selectedBorderColor: Colors.white,
          splashColor: AppColors.lightContainerColor,
          fillColor: AppColors.containerColor,
          borderColor: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          onPressed: (int index) {
            setState(() {
              // Toggle the selection
              for (int buttonIndex = 0;
                  buttonIndex < isSelected.length;
                  buttonIndex++) {
                if (buttonIndex == index) {
                  isSelected[buttonIndex] = true;
                } else {
                  isSelected[buttonIndex] = false;
                }
              }
              currentIndex = index;
            });
          },
          isSelected: isSelected,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Team',style: Theme.of(context).textTheme.bodySmall),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Text('Squad',style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
        const SizedBox(height: 10),
        currentIndex == 0 ? const ClubInfo() : const PlayersInfo()
      ],
    );
  }
}
