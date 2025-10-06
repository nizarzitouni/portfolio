import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/app_router.dart';
import '../../../models/project_model.dart';
import '../../../models/projects_data.dart';
import '../../home_v_web/widgets/crousal_indicator.dart';
import '../../home_v_web/widgets/hover_underline.dart';
import '../../home_v_web/widgets/project_links_widget.dart';

class ProjectDetailsMob extends StatelessWidget {
  const ProjectDetailsMob({super.key, required this.projectId});
  final int projectId;
  @override
  Widget build(BuildContext context) {
    ProjectModel projectModel;
    if (projectId < 50) {
      projectModel = ProjectData.mobileDevProjectList.firstWhere((project) => project.projectId == projectId);
    } else {
      projectModel = ProjectData.threeDProjectList.firstWhere((project) => project.projectId == projectId);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //Back button container
              Row(
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
              const Gap(20),
              Divider(height: 1, color: Theme.of(context).textTheme.bodySmall!.color),
              const Gap(30),
              //Crousel
              Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 500,
                        // width: SizeConfig.screenWidth * 0.20,
                        child: CarouselWithIndicator(imgList: projectModel.appScreens!),
                      ),
                    ),
                  ),
                  const Gap(30),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(8),
                      Text(
                        projectModel.projectDescription,
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Gap(24),
                      const Text(
                        'Techstack:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const Gap(8),
                      Wrap(
                        spacing: 10,
                        children: [
                          for (final tech in projectModel.techStacks)
                            Text(
                              '● $tech',
                              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                        ],
                      ),
                      const Gap(24),
                      //
                      // LiveOrGithubWidget(projectModel: projectModel),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: ProjectLinksWidget(projectModel: projectModel),
                      ),
                    ],
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
      ),
    );
  }
}
