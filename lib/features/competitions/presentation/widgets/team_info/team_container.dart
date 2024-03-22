import 'package:flutter/cupertino.dart';
import '../../../../../config/colors/app_colors.dart';

class TeamContainer extends StatelessWidget {

  const TeamContainer({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.containerColor,
        ),
        child: widget
    );
  }
}
