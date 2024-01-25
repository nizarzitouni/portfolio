import 'package:flutter/material.dart';

import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import 'small_bar_title.dart';
import 'web_about_section.dart';
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
                WebMobileProtfolio(key: GlobalKeys.KEY_WEB_MOBILEPORTFOLIO),
                const SmallBarTitle(text: '3D portfolio'),
                WebMobileProtfolio(key: GlobalKeys.KEY_WEB_3DPORTFOLIO),
                const SmallBarTitle(text: 'Game Design portfolio'),
                WebMobileProtfolio(key: GlobalKeys.KEY_WEB_GAMEDESIGNPORTFOLIO),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
