import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/app_router.dart';
import '../../../models/project_model.dart';
import '../widgets/live_or_github_widget.dart';
import '../../../core/size_config.dart';
import '../../../models/projects_data.dart';
import '../widgets/center_top_widget.dart';
import '../widgets/crousal_indicator.dart';
import '../widgets/hover_underline.dart';

class ProjectDeatailsWeb extends StatelessWidget {
  const ProjectDeatailsWeb({Key? key, required this.projectId}) : super(key: key);
  final String projectId;

  @override
  Widget build(BuildContext context) {
    ProjectModel projectModel;
    if (int.parse(projectId) < 50) {
      projectModel = ProjectData.mobileDevProjectList.firstWhere((project) => project.projectId == projectId);
    } else {
      projectModel = ProjectData.threeDProjectList.firstWhere((project) => project.projectId == projectId);
    }

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.7;

          return CenterTopWidget(
            myWidget: SizedBox(
              width: containerWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: IconButton(
                          onPressed: () => context.go(kHomeView),
                          icon: const Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                      HoverUnderlineText(
                        text: projectModel.projectTitle,
                        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  const Gap(30),
                  Divider(height: 1, color: Theme.of(context).textTheme.bodySmall!.color),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: SizeConfig.screenWidth * 0.35,
                              width: SizeConfig.screenWidth * 0.20,
                              child: CarouselWithIndicator(imgList: projectModel.appScreens!),
                            ),
                          )),
                      const Gap(30),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                                  Text(
                                    "● $tech",
                                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                                  )
                              ],
                            ),
                            const Gap(24),
                            //
                            // LiveOrGithubWidget(projectModel: projectModel),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: LiveOrGithubWidget(projectModel: projectModel),
                            ),
                            // const Text("Role:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            // const Gap(8),
                            // Text(
                            //   projectModel.role,
                            //   style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                            // ),
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
