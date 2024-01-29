import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/pallete.dart';
import 'package:nizar_ztn_portfolio/core/routes/app_router.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../models/project_model.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel projectModel;
  const ProjectCard({
    Key? key,
    required this.projectModel,
  }) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          // sendEmail();
          //GoRouter.of(context).push('/project/${widget.projectModel.projectId}');
          AppRouter.router.go('/projects/${widget.projectModel.projectId}'); // Replace 123 with the actual project ID
        },
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: Pallete.blackColor,
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 0.50,
              color: const Color(0xFFABB2BF),
            ),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: Pallete.whiteColor.withOpacity(.5),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    const BoxShadow(
                      color: Pallete.blackColor,
                      blurRadius: 12.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //  width: 330.58,
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
                  //  width: 100,
                  height: 100,
                  child: ResponsiveGridList(
                    // Vertical space around the grid
                    minItemWidth: 60, // The minimum item width (can be smaller, if the layout constraints are smaller)
                    minItemsPerRow: 1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                    maxItemsPerRow: 2, // The maximum items to show in a single row. Can be useful on large screens
                    listViewBuilderOptions: ListViewBuilderOptions(
                        shrinkWrap: true,
                        physics:
                            const NeverScrollableScrollPhysics()), // Options that are getting passed to the ListView.builder() function
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.projectModel.liveUrl != null)
                            RawMaterialButton(
                              onPressed: () {
                                _launchUrl(widget.projectModel.liveUrl!);
                              },
                              hoverColor: Theme.of(context).primaryColor,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 0.50, color: Color(0xFFC778DD)),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Live <~>',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          const SizedBox(width: 16),
                          if (widget.projectModel.githubUrl != null)
                            RawMaterialButton(
                              onPressed: () {
                                _launchUrl(widget.projectModel.githubUrl!);
                              },
                              hoverColor: Theme.of(context).primaryColor,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 0.50, color: Color(0xFFABB2BF)),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Github >=',
                                      style: TextStyle(
                                        color: Color(0xFFABB2BF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
