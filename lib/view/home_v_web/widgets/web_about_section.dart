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
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    // width: SizeConfig.screenWidth * .55,
                    child: Text(LONGABOUT, style: TextStyle(fontSize: 18)),
                  ),
                ),
                // const Gap(10),

                // Expanded(
                //   flex: 1,
                //   child: SizedBox(
                //     // width: SizeConfig.screenWidth * .15,
                //     child: Column(
                //       children: [
                //         Socials(
                //           text: 'ztn.nizar@gmail.com',
                //           iconData: Icons.mail,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            Gap(40),
          ],
        ),
      ),
    );
  }
}
