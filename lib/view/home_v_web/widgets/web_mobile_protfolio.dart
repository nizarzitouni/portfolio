import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/models/project_model.dart';

import 'project_card.dart';

class WebMobileProtfolio extends StatelessWidget {
  const WebMobileProtfolio({Key? key, required this.projectModelsList}) : super(key: key);
  final List<ProjectModel> projectModelsList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.7;
          return SizedBox(
            width: containerWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 10, //SizeConfig.normalize(20), vertical space
                spacing: 10,
                direction: Axis.horizontal,
                children: projectModelsList.map((project) {
                  return ProjectCard(projectModel: project);
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
