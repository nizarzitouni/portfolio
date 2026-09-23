import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/routes/error_page.dart';
import '../../../models/project_model.dart';
import '../../../models/projects_data.dart';
import '../../home_v_web/widgets/project_detail_content.dart';
import '../../home_v_web/widgets/project_details/project_header.dart';
import '../../home_v_web/widgets/project_details/screenshot_strip.dart';

const Color _hairline = Color(0xFF2E2E2E);

class ProjectDetailsMob extends StatelessWidget {
  const ProjectDetailsMob({super.key, required this.projectId});
  final int projectId;

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> list = projectId < 50 ? ProjectData.mobileDevProjectList : ProjectData.threeDProjectList;
    final int idx = list.indexWhere((p) => p.projectId == projectId);
    if (idx < 0) return const ErrorPage();
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
              ProjectHeader(projectModel: projectModel, compact: true),
              const Gap(28),
              ScreenshotStrip(images: projectModel.appScreens ?? const [], height: projectModel.carouselFullWidth ? 200 : 420),
              const Gap(28),
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
