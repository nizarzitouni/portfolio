import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/models/project_model.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'project_cardd.dart';
import 'widgets/project_card.dart';

class WebMobileProjects extends StatelessWidget {
  const WebMobileProjects({Key? key, required this.projectModelsList}) : super(key: key);
  final List<ProjectModel> projectModelsList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.7;
          // return Container(
          //   padding: const EdgeInsets.symmetric(vertical: 80),
          //   width: containerWidth,
          //   child: Wrap(
          //     alignment: WrapAlignment.center,
          //     crossAxisAlignment: WrapCrossAlignment.center,
          //     runSpacing: 10, //SizeConfig.normalize(20), vertical space
          //     spacing: 10,
          //     direction: Axis.horizontal,
          //     children: projectModelsList.map((project) {
          //       return ProjectCardd(projectModel: project);
          //     }).toList(),
          //   ),
          // );
          return SizedBox(
            //  height: 500,
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
                  physics: const NeverScrollableScrollPhysics()), // Options that are getting passed to the ListView.builder() function
              children: List.generate(4, (index) {
                ProjectModel project = projectModelsList[index];
                return ProjectCardd(
                  projectModel: project,
                );
              }), // The list of widgets in the list
            ),
          );
        },
      ),
    );
  }
}
