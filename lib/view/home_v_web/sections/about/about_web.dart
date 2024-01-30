import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.7;

          return SizedBox(
            width: containerWidth,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Gap(40),
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                      // width: SizeConfig.screenWidth * .55,
                      child: Text(LONGABOUT, style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
                Gap(40),
              ],
            ),
          );
        },
      ),
    );
  }
}
