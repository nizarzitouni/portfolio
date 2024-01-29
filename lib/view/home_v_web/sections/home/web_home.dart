import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../../../../core/constants.dart';
import '../../../../core/image_paths.dart';
import '../../../../core/size_config.dart';
import '../../../../models/web_action_model.dart';
import 'widgets/circular_dashed_border.dart';
import 'widgets/profile_info.dart';
import 'widgets/quote_widget.dart';

class WebHome extends StatelessWidget {
  const WebHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.7;
          return SizedBox(
            width: containerWidth,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2, // Adjust the flex values based on your desired proportions
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(SizeConfig.screenWidth * 0.08),
                          ProfileInfo(
                            name: NAME,
                            position: POS,
                            basedIn: BASEDIN,
                            about: ABOUTPROFILE,
                            webActions: [
                              WebActionModel(
                                webUrl: LINKEDIN,
                                assetImagePath: AssetsConstants.linkedinSvg,
                              ),
                              WebActionModel(
                                webUrl: GITHUB,
                                assetImagePath: AssetsConstants.githubSvg,
                              ),
                              WebActionModel(
                                webUrl: GITLAB,
                                assetImagePath: AssetsConstants.gitlabSvg,
                              ),
                              WebActionModel(
                                webUrl: SKETCHFAB,
                                assetImagePath: AssetsConstants.sketchfabSvg,
                              ),
                              WebActionModel(
                                webUrl: PLAYSTORE,
                                assetImagePath: AssetsConstants.playstoreSvg,
                              ),
                              WebActionModel(
                                webUrl: RESUMEURL,
                                assetImagePath: AssetsConstants.downloadSvg,
                                text: "Resume",
                              ),
                            ],
                          ),
                          // Gap(SizeConfig.screenWidth * 0.08),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CircularDashedBorder(
                        imagePath: ImagesPath.profileAvatar,
                        dashColor: Theme.of(context).buttonTheme.colorScheme!.primary,
                        imageSize: MediaQuery.of(context).size.width * 0.18,
                        imagePadding: MediaQuery.of(context).size.width * 0.02,
                      ),
                    ),
                  ],
                ),
                // const Gap(20),
                const QuoteWidget(),
                const Gap(40),
              ],
            ),
          );
        },
      ),
    );
  }
}
