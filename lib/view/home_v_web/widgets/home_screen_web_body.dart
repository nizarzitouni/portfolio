import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants.dart';
import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import '../../../models/projects_data.dart';
import '../sections/made_with_flutter.dart';
import 'small_bar_title.dart';
import '../sections/about/web_about.dart';
import '../sections/contact/web_conatct.dart';
import '../sections/home/web_home.dart';
import 'web_menu_header.dart';
import '../sections/projects/web_flutter_projects.dart';

class HomeScreenWebBody extends StatelessWidget {
  const HomeScreenWebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WebMenuHeader(key: GlobalKeys.KEY_WEB_HEADER),
        Expanded(
            child: SingleChildScrollView(
          child: Container(
            color: Pallete.blackColor,
            //width: SizeConfig.screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WebHome(key: GlobalKeys.KEY_WEB_HOME),
                const SmallBarTitle(text: ABOUT_HEADER),
                WebAbout(key: GlobalKeys.KEY_WEB_ABOUTME),
                const SmallBarTitle(text: MOBILEPROJECTS_HEADER),
                WebFlutterProjects(key: GlobalKeys.KEY_WEB_MOBILEPORTFOLIO, projectModelsList: ProjectData.mobileDevProjectList),
                const SmallBarTitle(text: THREED_HEADER),
                WebFlutterProjects(key: GlobalKeys.KEY_WEB_3DPORTFOLIO, projectModelsList: ProjectData.threeDProjectList),
                const SmallBarTitle(text: CONTACT_HEADER),
                WebContact(key: GlobalKeys.KEY_WEB_CONTACTME),
                const Gap(40),
                const MadeWithFlutterButton(),
                const Gap(30),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
