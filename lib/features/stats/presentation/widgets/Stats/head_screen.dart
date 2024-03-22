import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../config/colors/app_colors.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget(
      {super.key,
      required this.headerWidget,
      required this.resultWidget,
      required this.backImg});

  final Widget headerWidget;
  final Widget resultWidget;
  final String backImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      decoration: const BoxDecoration(),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: AppColors.liveMatchColor,
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: NetworkImage(
                      backImg,
                    ),
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.medium,
                    opacity: 0.3),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            height: 250,
          ),
          headerWidget,
          resultWidget,
        ],
      ),
    );
  }
}
