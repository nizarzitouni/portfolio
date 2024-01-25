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
      child: Container(
        color: Pallete.blackGreyColor,
        height: barsHight,
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.12),
            Container(
              color: const Color(0xff121212),
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  HoverUnderlineText(
                      text: "Projects",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(GlobalKeys.KEY_WEB_PROJECTS.currentContext!,
                            duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                      }),
                  const Gap(30),
                  HoverUnderlineText(
                      text: "Skills",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(GlobalKeys.KEY_WEB_SKILLS.currentContext!,
                            duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                      }),
                  const Gap(30),
                  HoverUnderlineText(
                      text: "About",
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                      ),
                      onClick: () {
                        Scrollable.ensureVisible(GlobalKeys.KEY_WEB_ABOUTME.currentContext!,
                            duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
                      }),
                  const Gap(30),
                  HoverUnderlineText(
                      text: "Contact",
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
  }
}
