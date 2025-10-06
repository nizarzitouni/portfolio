import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../../../../core/pallete.dart';
import '../../../../../core/routes/app_router.dart';
import '../../../../../core/singlton_init.dart';
import '../../../../../models/project_model.dart';
import '../../../../home_v_web/widgets/project_links_widget.dart';

class MobProjectCard extends StatefulWidget {
  const MobProjectCard({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  State<MobProjectCard> createState() => _MobProjectCardState();
}

class _MobProjectCardState extends State<MobProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await analytics.logEvent(
            name: 'project_clicks_tracked',
            parameters: {
              'project_name': widget.projectModel.projectTitle,
            },
          );
          AppRouter.router.go('/projects/${widget.projectModel.projectId}');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Pallete.blackColor,
            border: Border.all(
              width: 0.50,
              color: const Color(0xFFABB2BF),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.projectModel.projectImageModel.projectCover),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: SizedBox(
                  height: 100,
                  child: ResponsiveGridList(
                    // Vertical space around the grid
                    minItemWidth: 60, // The minimum item width (can be smaller, if the layout constraints are smaller)
                    maxItemsPerRow: 2, // The maximum items to show in a single row. Can be useful on large screens
                    listViewBuilderOptions: ListViewBuilderOptions(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ), // Options that are getting passed to the ListView.builder() function
                    children: List.generate(
                      widget.projectModel.techStacks.length,
                      (index) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            widget.projectModel.techStacks[index],
                            style: const TextStyle(
                              color: Color(0xFFABB2BF),
                              fontSize: 16,
                              //fontFamily: 'Fira Code',
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ), // The list of widgets in the list
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                // height: 153,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        widget.projectModel.projectTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        widget.projectModel.projectDescription,
                        style: const TextStyle(
                          color: Color(0xFFABB2BF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    //
                    ProjectLinksWidget(projectModel: widget.projectModel),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
