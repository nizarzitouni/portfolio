import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/functions.dart';
import '../../../core/size_config.dart';
import '../../../models/projects_data.dart';
import 'crousal_indicator.dart';
import 'hover_underline.dart';

class WebProjects extends StatelessWidget {
  const WebProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeConfig.screenWidth * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(40),
            for (final item in projectModelsList)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.width * 0.35,
                                width: MediaQuery.of(context).size.width * 0.20,
                                child: CarouselWithIndicator(imgList: item.images)),
                          )),
                      const Gap(30),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                launchWithUri(url: item.url);
                              },
                              child: kIsWeb
                                  ? HoverUnderlineText(
                                      text: item.titles, textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24))
                                  : Text(item.titles, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                            ),
                            const Gap(8),
                            Text(item.description, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                            const Gap(24),
                            const Text("Techstack:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            const Gap(8),
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              alignment: WrapAlignment.start,
                              children: [
                                for (final tech in item.techStacks)
                                  Text("● $tech", style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16))
                              ],
                            ),
                            const Gap(24),
                            const Text("Role:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            const Gap(8),
                            Text(item.role, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(30),
                  Divider(
                    height: 1,
                    color: Theme.of(context).textTheme.bodySmall!.color,
                  ),
                  const Gap(30),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
