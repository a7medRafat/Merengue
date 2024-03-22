import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';

import '../../../../App/injuctoin_container.dart';
import '../../../../config/style/icons_broken.dart';

class BuildBottomNav extends StatelessWidget {
  const BuildBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: BottomNavigationBar(
              onTap: (index){
                sl<AppCubit>().changeNavButton(index);
              },
                currentIndex: sl<AppCubit>().currentNavIndex,
                showSelectedLabels: false,
                backgroundColor: AppColors.containerColor,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        IconBroken.Home,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(IconBroken.Chart), label: ''),

                ]),
          ),
        );
      },
    );
  }
}
