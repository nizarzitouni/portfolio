import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants.dart';
import '../../../core/image_paths.dart';
import '../../../core/size_config.dart';
import '../../../models/web_action_model.dart';
import 'circular_dashed_border.dart';
import 'profile_info.dart';

class WebHome extends StatelessWidget {
  const WebHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
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
                        const ProfileInfo(
                          name: NAME,
                          position: POS,
                          basedIn: BASEDIN,
                          about: ABOUT,
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
                          ],
                        ),
                        Gap(SizeConfig.screenWidth * 0.08),
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
              SizedBox(
                width: containerWidth,
                height: 148,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 30,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Overthinking is the enemy of execution.",
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                        child: const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            "- Tony Robbins",
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 8,
                      child: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          height: 42,
                          width: 29,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/svgs/quote.svg"),
                          )),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 40,
                      child: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          height: 42,
                          width: 29,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/svgs/quote.svg"),
                          )),
                    ),
                  ],
                ),
              ),
              const Gap(40),
            ],
          ),
        );
      }),
    );
  }
}
