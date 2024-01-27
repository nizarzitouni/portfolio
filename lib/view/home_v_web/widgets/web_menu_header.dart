import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants.dart';
import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import 'hover_underline.dart';
import 'navbar_logo.dart';

class WebMenuHeader extends StatelessWidget {
  const WebMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        double containerWidth = constraints.maxWidth;
        double containerWidthPointSeven = constraints.maxWidth * 0.7;

        return Container(
          color: Pallete.blackGreyColor,
          height: 60,
          width: containerWidth,
          child: SizedBox(
            width: containerWidthPointSeven,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const NavBarLogo(),
                SizedBox(width: containerWidthPointSeven * 0.3),
                Container(
                  color: const Color(0xff121212),
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      HoverUnderlineText(
                          text: HOME_HEADER,
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                          onClick: () {
                            Scrollable.ensureVisible(GlobalKeys.KEY_WEB_HOME.currentContext!,
                                duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                          }),
                      const Gap(30),
                      HoverUnderlineText(
                          text: ABOUT_HEADER,
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                          onClick: () {
                            Scrollable.ensureVisible(GlobalKeys.KEY_WEB_ABOUTME.currentContext!,
                                duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                          }),
                      const Gap(30),
                      HoverUnderlineText(
                          text: MOBILEPROJECTS_HEADER,
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                          onClick: () {
                            Scrollable.ensureVisible(GlobalKeys.KEY_WEB_MOBILEPORTFOLIO.currentContext!,
                                duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                          }),
                      const Gap(30),
                      HoverUnderlineText(
                          text: THREED_HEADER,
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                          onClick: () {
                            Scrollable.ensureVisible(GlobalKeys.KEY_WEB_3DPORTFOLIO.currentContext!,
                                duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                          }),

                      const Gap(30),
                      HoverUnderlineText(
                          text: CONTACT_HEADER,
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                          ),
                          onClick: () {
                            Scrollable.ensureVisible(GlobalKeys.KEY_WEB_CONTACTME.currentContext!,
                                duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                          }),
                      //const Gap(30),
                    ],
                  ),
                ),
                //const ThemeChangeButton(iconSize: 24),
              ],
            ),
          ),
        );
      }),
    );
  }
}
