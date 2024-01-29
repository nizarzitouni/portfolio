import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nizar_ztn_portfolio/models/project_model.dart';

import '../../core/functions.dart';
import '../../models/projects_data.dart';
import 'widgets/crousal_indicator.dart';
import 'widgets/hover_underline.dart';

class ProjectDeatailsWeb extends StatelessWidget {
  const ProjectDeatailsWeb({Key? key, required this.projectId}) : super(key: key);
  final String projectId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double containerWidth = constraints.maxWidth * 0.7;
            ProjectModel projectModel = ProjectData.mobileDevProjectList[int.parse(projectId)];
            return SizedBox(
              width: containerWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                                child: CarouselWithIndicator(imgList: projectModel.appScreens!)),
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
                                launchWithUri(url: projectModel.liveUrl!);
                              },
                              child: kIsWeb
                                  ? HoverUnderlineText(
                                      text: projectModel.projectTitle,
                                      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                    )
                                  : Text(
                                      projectModel.projectTitle,
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                    ),
                            ),
                            const Gap(8),
                            Text(
                              projectModel.projectDescription,
                              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            const Gap(24),
                            const Text(
                              "Techstack:",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const Gap(8),
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              alignment: WrapAlignment.start,
                              children: [
                                for (final tech in projectModel.techStacks)
                                  Text("● $tech", style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16))
                              ],
                            ),
                            const Gap(24),
                            const Text("Role:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            const Gap(8),
                            Text(
                              projectModel.role,
                              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                            ),
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
            );
          },
        ),
      ),
    );
  }
}
