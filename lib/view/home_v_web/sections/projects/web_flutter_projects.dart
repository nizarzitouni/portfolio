import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/models/project_model.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'widgets/web_project_card.dart';

class WebFlutterProjects extends StatelessWidget {
  const WebFlutterProjects({Key? key, required this.projectModelsList}) : super(key: key);
  final List<ProjectModel> projectModelsList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.7;

          return Container(
            padding: const EdgeInsets.symmetric(vertical: 80),
            width: containerWidth,
            child: ResponsiveGridList(
              horizontalGridSpacing: 0, // Horizontal space between grid items
              verticalGridSpacing: 0, // Vertical space between grid items
              horizontalGridMargin: 0, // Horizontal space around the grid
              verticalGridMargin: 0, // Vertical space around the grid
              minItemWidth: 300, // The minimum item width (can be smaller, if the layout constraints are smaller)
              minItemsPerRow: 1, // The minimum items to show in a single row. Takes precedence over minItemWidth
              maxItemsPerRow: 5, // The maximum items to show in a single row. Can be useful on large screens
              listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
              ), // Options that are getting passed to the ListView.builder() function
              children: List.generate(
                projectModelsList.length,
                (index) {
                  ProjectModel project = projectModelsList[index];
                  return WebProjectCard(
                    projectModel: project,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
