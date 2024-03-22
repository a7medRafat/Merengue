import 'package:flutter/material.dart';

class SideTextWidget extends StatelessWidget {

  const SideTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Text(text,style: Theme.of(context).textTheme.titleMedium),
    );
  }
}
