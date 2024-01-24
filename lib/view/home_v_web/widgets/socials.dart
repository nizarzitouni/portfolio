import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Socials extends StatelessWidget {
  const Socials({Key? key, required this.text, required this.iconData}) : super(key: key);
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        const Gap(5),
        Text(text),
      ],
    );
  }
}
