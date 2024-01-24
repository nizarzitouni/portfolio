import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants.dart';
import '../../../core/size_config.dart';
import 'socials.dart';

class WebAboutSection extends StatelessWidget {
  const WebAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeConfig.screenWidth * 0.7,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    // width: SizeConfig.screenWidth * .55,
                    child: Text(LONGABOUT, style: TextStyle(fontSize: 18)),
                  ),
                ),
                // const Gap(10),
              ],
            ),
            Gap(40),
          ],
        ),
      ),
    );
  }
}
