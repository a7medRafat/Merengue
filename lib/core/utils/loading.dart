import 'package:flutter/material.dart';
import 'package:meringiii/config/colors/app_colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: AppColors.mOrange,
      strokeWidth: 3,
    ));
  }
}
