import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/size_config.dart';
import 'small_bar_title.dart';

class WebAboutSection extends StatelessWidget {
  const WebAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SmallBarTitle(text: 'about'),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(40),
            Container(
              color: Colors.red,
              height: 40,
              width: SizeConfig.screenWidth * .7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth * .5,
                    child: const Column(
                      children: [Text('datadatadatadatadatadatadattadatadatadataadatadatadatadatadatadata')],
                    ),
                  ),
                  // const Gap(10),
                  SizedBox(
                    width: SizeConfig.screenWidth * .1,
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.mail),
                            Gap(5),
                            Text(
                              ('Mail@gmail.com'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(40),
          ],
        ),
      ],
    );
  }
}
