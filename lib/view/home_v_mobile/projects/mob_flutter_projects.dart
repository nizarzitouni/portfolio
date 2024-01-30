import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../../models/project_model.dart';
import '../../home_v_web/sections/projects/widgets/project_card.dart';

class MobFlutterProjects extends StatelessWidget {
  const MobFlutterProjects({Key? key, required this.projectModelsList}) : super(key: key);
  final List<ProjectModel> projectModelsList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        child: ResponsiveGridList(
          horizontalGridSpacing: 10, // Horizontal space between grid items
          verticalGridSpacing: 0, // Vertical space between grid items
          horizontalGridMargin: 0, // Horizontal space around the grid
          verticalGridMargin: 0, // Vertical space around the grid
          minItemWidth: 300, // The minimum item width (can be smaller, if the layout constraints are smaller)
          minItemsPerRow: 1, // The minimum items to show in a single row. Takes precedence over minItemWidth
          maxItemsPerRow: 2, // The maximum items to show in a single row. Can be useful on large screens
          listViewBuilderOptions: ListViewBuilderOptions(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ), // Options that are getting passed to the ListView.builder() function
          children: List.generate(
            projectModelsList.length,
            (index) {
              ProjectModel project = projectModelsList[index];
              return ProjectCard(
                projectModel: project,
              );
            },
          ),
        ),
      ),
    );
  }
}
