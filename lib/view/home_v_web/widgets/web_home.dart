import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants.dart';
import '../../../core/image_paths.dart';
import '../../../models/web_actions.dart';
import 'circular_dashed_border.dart';
import 'profile_info.dart';

class WebHome extends StatelessWidget {
  const WebHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(120),
                ProfileInfo(
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
                Gap(120),
              ],
            )),
        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: CircularDashedBorder(
            imagePath: ImagesPath.profileAvatar,
            dashColor: Theme.of(context).buttonTheme.colorScheme!.primary,
            imageSize: MediaQuery.of(context).size.width * 0.22,
            imagePadding: MediaQuery.of(context).size.width * 0.02,
          ),
        ),
      ],
    );
  }
}
