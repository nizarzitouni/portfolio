import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/routes/error_page.dart';
import '../../../models/project_model.dart';
import '../../../models/projects_data.dart';
import '../widgets/project_detail_content.dart';
import '../widgets/project_details/project_header.dart';
import '../widgets/project_details/screenshot_strip.dart';

const Color _hairline = Color(0xFF2E2E2E);

class ProjectDeatailsWeb extends StatelessWidget {
  const ProjectDeatailsWeb({super.key, required this.projectId});
  final int projectId;

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> list = projectId < 50 ? ProjectData.mobileDevProjectList : ProjectData.threeDProjectList;
    final int idx = list.indexWhere((p) => p.projectId == projectId);
    if (idx < 0) return const ErrorPage();
    final ProjectModel projectModel = list[idx];
    final ProjectModel? prev = idx > 0 ? list[idx - 1] : null;
    final ProjectModel? next = idx < list.length - 1 ? list[idx + 1] : null;
    final double containerWidth = MediaQuery.sizeOf(context).width * 0.7;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: containerWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),
                const ProjectBackChip(),
                const Gap(36),
                ProjectHeader(projectModel: projectModel),
                const Gap(40),
                ScreenshotStrip(images: projectModel.appScreens ?? const [], height: projectModel.carouselFullWidth ? 340 : 520),
                const Gap(40),
                ProjectDetailContent(projectModel: projectModel),
                const Gap(48),
                const Divider(height: 1, color: _hairline),
                const Gap(20),
                ProjectNav(prev: prev, next: next),
                const Gap(48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
