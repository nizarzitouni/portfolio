import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants.dart';
import '../../../core/image_paths.dart';
import '../../../core/size_config.dart';
import '../../../models/web_actions.dart';
import 'circular_dashed_border.dart';
import 'profile_info.dart';

class WebHome extends StatelessWidget {
  const WebHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeConfig.screenWidth * 0.7,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2, // Adjust the flex values based on your desired proportions
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(SizeConfig.screenWidth * 0.04),
                  const ProfileInfo(
                    name: NAME,
                    position: POS,
                    basedIn: BASEDIN,
                    about: ABOUT,
                    webActions: [
                      WebAction(
                        webUrl: LINKEDIN,
                        assetImage: AssetImage(ImagesPath.iconLinkedin),
                      ),
                      WebAction(
                        webUrl: GITHUB,
                        assetImage: AssetImage(ImagesPath.iconGithub),
                      ),
                      WebAction(
                        webUrl: GITLAB,
                        assetImage: AssetImage(ImagesPath.iconGitlab),
                      ),
                      WebAction(
                        webUrl: SKETCHFAB,
                        assetImage: AssetImage(ImagesPath.iconSketchfab),
                      ),
                      WebAction(
                        webUrl: PLAYSTORE,
                        assetImage: AssetImage(ImagesPath.iconPlaystore),
                      ),
                    ],
                  ),
                  Gap(SizeConfig.screenWidth * 0.04),
                ],
              ),
            ),
            // Container(
            //   width: SizeConfig.screenWidth * 0.02,
            //   color: Colors.purple, //Remove
            // ),
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
      ),
    );
  }
}
