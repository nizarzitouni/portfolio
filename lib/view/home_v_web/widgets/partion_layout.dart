import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/pallete.dart';

class PartionLayout extends StatelessWidget {
  const PartionLayout({Key? key, required this.widget}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.blackColor,
      width: double.infinity,
      child: Container(
        color: Pallete.blackColor,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(40),
            widget,
            const Gap(40),
          ],
        ),
      ),
    );
  }
}
