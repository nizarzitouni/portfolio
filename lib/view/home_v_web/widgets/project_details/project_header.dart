import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../models/project_model.dart';
import '../project_links_widget.dart';

const Color _greyText = Color(0xFFABB2BF);

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({super.key, required this.projectModel, this.compact = false});

  final ProjectModel projectModel;
  final bool compact;

  String? get _tagline {
    final t = projectModel.tagline?.trim();
    return (t == null || t.isEmpty) ? null : t;
  }

  @override
  Widget build(BuildContext context) {
    final iconSize = compact ? 64.0 : 88.0;
    final tagline = _tagline;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(iconSize * 0.22),
              child: Image.asset(projectModel.projectImageModel.projectIcon, width: iconSize, height: iconSize, fit: BoxFit.cover),
            ),
            Gap(compact ? 16 : 22),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectModel.projectTitle,
                    style: TextStyle(fontSize: compact ? 26 : 36, fontWeight: FontWeight.w700, height: 1.15),
                  ),
                  if (tagline != null) ...[
                    const Gap(6),
                    Text(tagline, style: TextStyle(fontSize: compact ? 15 : 18, color: _greyText, height: 1.4)),
                  ],
                ],
              ),
            ),
          ],
        ),
        const Gap(22),
        ProjectLinksWidget(projectModel: projectModel),
      ],
    );
  }
}
