import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/config/style/icons_broken.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';

class AppNameAndSearch extends StatelessWidget {
  const AppNameAndSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/hero.png',width: 90,height: 90),
                // Text(
                //     'Merengues',
                //     style: Theme.of(context)
                //         .textTheme
                //         .titleMedium
                //         ?.copyWith(color: AppColors.selectedContainer)),
                // Container(
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(50),
                //         color: AppColors.mWhite),
                //     child: IconButton(
                //         onPressed: () {},
                //         icon: const Icon(
                //           IconBroken.Search,
                //           size: 15,
                //         )))
              ],
            ));
      },
    );
  }
}
