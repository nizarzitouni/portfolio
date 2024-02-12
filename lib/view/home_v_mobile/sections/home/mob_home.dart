import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants.dart';
import '../../../../core/image_paths.dart';
import '../../../../models/web_action_model.dart';
import '../../../home_v_web/sections/home/widgets/circular_dashed_border.dart';
import '../../../home_v_web/sections/home/widgets/profile_info.dart';
import 'widgets/mob_wuote_widget.dart';

class MobHome extends StatelessWidget {
  const MobHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
                  webUrl: LD_RESUMEURL,
                  assetImagePath: AssetsConstants.downloadSvg,
                  text: "Resume",
                ),
              ],
            ),
            const Gap(20),
            CircularDashedBorder(
              imagePath: ImagesPath.profileAvatar,
              dashColor: Theme.of(context).buttonTheme.colorScheme!.primary,
              imageSize: MediaQuery.of(context).size.width * 0.35,
              imagePadding: MediaQuery.of(context).size.width * 0.05,
            ),
            // const Gap(20),
            const Gap(30),
            const MobWuoteWidget(),
          ],
        ),
      ),
    );
  }
}
