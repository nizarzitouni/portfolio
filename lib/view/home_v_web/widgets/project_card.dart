import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/pallete.dart';
import 'package:nizar_ztn_portfolio/core/size_config.dart';

import '../../../core/functions.dart';

class ProjectCard extends StatefulWidget {
  final String banner;
  final String projectLink;
  final String projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    Key? key,
    required this.banner,
    required this.projectIcon,
    required this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => launchWithUri(
        url: widget.projectLink,
      ),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.all(10),
        width: SizeConfig.screenWidth * .22,
        height: SizeConfig.screenWidth * .17,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Pallete.blackColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  ),
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (width > 1135 || width < 950)
                    ? Image.asset(
                        widget.projectIcon,
                        height: height * 0.05,
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            widget.projectIcon,
                            height: height * 0.03,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            widget.projectTitle,
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                widget.projectIconData != null
                    ? Icon(
                        widget.projectIconData,
                        color: Pallete.blackColor,
                        size: height * 0.1,
                      )
                    : Container(),
                (width > 1135 || width < 950)
                    ? SizedBox(
                        height: height * 0.02,
                      )
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? Text(
                        widget.projectTitle,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      )
                    : Container(),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.banner != null
                    ? Image.asset(
                        widget.banner,
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
