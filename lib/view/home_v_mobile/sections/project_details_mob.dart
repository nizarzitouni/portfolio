import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../models/project_model.dart';
import '../../../models/projects_data.dart';
import '../../home_v_web/widgets/crousal_indicator.dart';
import '../../home_v_web/widgets/project_detail_content.dart';
import '../../home_v_web/widgets/window_chrome.dart';

const Color _hairline = Color(0xFF2E2E2E);

class ProjectDetailsMob extends StatelessWidget {
  const ProjectDetailsMob({super.key, required this.projectId});
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProjectBackChip(),
              const Gap(24),
              WindowChrome(
                label: 'screens/${projectSlug(projectModel.projectTitle)}',
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CarouselWithIndicator(
                    imgList: projectModel.appScreens!,
                    height: projectModel.carouselFullWidth ? 220 : 460,
                  ),
                ),
              ),
              const Gap(32),
              ProjectDetailContent(projectModel: projectModel),
              const Gap(40),
              const Divider(height: 1, color: _hairline),
              const Gap(20),
              ProjectNav(prev: prev, next: next, stacked: true),
            ],
          ),
        ),
      ),
    );
  }
}
