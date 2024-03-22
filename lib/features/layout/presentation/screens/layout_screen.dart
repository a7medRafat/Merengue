import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meringiii/config/colors/app_colors.dart';
import 'package:meringiii/features/layout/cubit/app_cubit.dart';
import '../../../../App/injuctoin_container.dart';
import '../widgets/bottom_nav_bar.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            extendBody: true,
            body: sl<AppCubit>().screens[sl<AppCubit>().currentNavIndex],
            bottomNavigationBar: const BuildBottomNav()
        );
      },
    );
  }
}
