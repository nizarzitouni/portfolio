import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../models/projects_data.dart';
import 'project_card.dart';

class WebMobileProtfolio extends StatelessWidget {
  const WebMobileProtfolio({Key? key}) : super(key: key);

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
                  return ProjectCard(
                    banner:
                        AssetsConstants.placeHolderImage, //project.images[0], // Assuming 'url' is equivalent to 'banner' in ProjectCard
                    projectIcon: project.images[0], // Replace with appropriate logic
                    projectLink: project.url, // Replace with appropriate logic
                    projectTitle: project.titles, // Replace with appropriate logic
                    projectDescription: project.description, // Replace with appropriate logic
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
