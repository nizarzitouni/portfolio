import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../models/project_model.dart';
import '../../../models/projects_data.dart';
import '../widgets/center_top_widget.dart';
import '../widgets/crousal_indicator.dart';
import '../widgets/project_detail_content.dart';
import '../widgets/window_chrome.dart';

const Color _hairline = Color(0xFF2E2E2E);

class ProjectDeatailsWeb extends StatelessWidget {
  const ProjectDeatailsWeb({super.key, required this.projectId});
  final int projectId;

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> list =
        projectId < 50 ? ProjectData.mobileDevProjectList : ProjectData.threeDProjectList;
    final int idx = list.indexWhere((p) => p.projectId == projectId);
    final ProjectModel projectModel = list[idx];
    final ProjectModel? prev = idx > 0 ? list[idx - 1] : null;
    final ProjectModel? next = idx < list.length - 1 ? list[idx + 1] : null;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double containerWidth = constraints.maxWidth * 0.7;

          final Widget screens = WindowChrome(
            label: 'screens/${projectSlug(projectModel.projectTitle)}',
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: CarouselWithIndicator(
                imgList: projectModel.appScreens!,
                height: projectModel.carouselFullWidth ? 460 : 560,
              ),
            ),
          );

          return CenterTopWidget(
            myWidget: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: containerWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(8),
                    const ProjectBackChip(),
                    const Gap(28),
                    if (projectModel.carouselFullWidth) ...[
                      screens,
                      const Gap(40),
                      ProjectDetailContent(projectModel: projectModel),
                    ] else
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: containerWidth * 0.32, child: screens),
                          const Gap(44),
                          Expanded(child: ProjectDetailContent(projectModel: projectModel)),
                        ],
                      ),
                    const Gap(48),
                    const Divider(height: 1, color: _hairline),
                    const Gap(20),
                    ProjectNav(prev: prev, next: next),
                    const Gap(48),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
