import 'package:flutter/material.dart';

import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import '../../../core/size_config.dart';
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
            width: MediaQuery.of(context).size.width,
            child: Container(
              width: SizeConfig.screenWidth * .7,
              color: Pallete.blackColor,
              child: Column(
                children: [
                  WebHome(key: GlobalKeys.KEY_WEB_HOME),
                  WebAboutSection(key: GlobalKeys.KEY_WEB_ABOUTME),
                ],
              ),
            ),
          ),
        ))
      ],
    );
  }
}
