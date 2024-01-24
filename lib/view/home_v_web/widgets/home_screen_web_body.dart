import 'package:flutter/material.dart';

import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import 'small_bar_title.dart';
import 'web_about_section.dart';
import 'web_home.dart';
import 'web_menu_header.dart';

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
              ],
            ),
          ),
        ))
      ],
    );
  }
}
