import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import '../../../models/projects_data.dart';
import 'made_with_flutter.dart';
import 'small_bar_title.dart';
import 'web_about_section.dart';
import 'web_conatct.dart';
import 'web_home.dart';
import 'web_menu_header.dart';
import 'web_mobile_protfolio.dart';

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
                const SmallBarTitle(text: 'about'),
                WebAboutSection(key: GlobalKeys.KEY_WEB_ABOUTME),
                const SmallBarTitle(text: 'mobile portfolio'),
                WebMobileProtfolio(key: GlobalKeys.KEY_WEB_MOBILEPORTFOLIO, projectModelsList: ProjectData.mobileDevProjectList),
                const SmallBarTitle(text: '3D portfolio'),
                WebMobileProtfolio(key: GlobalKeys.KEY_WEB_3DPORTFOLIO, projectModelsList: ProjectData.threeDProjectList),
                const SmallBarTitle(text: 'Contact'),
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
