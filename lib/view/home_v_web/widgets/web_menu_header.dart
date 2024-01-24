import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/global_keys.dart';
import 'hover_underline.dart';

class WebMenuHeader extends StatelessWidget {
  const WebMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          color: const Color(0xff292929),
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverUnderlineText(
                text: "Nizar Zitouni",
                textStyle:
                    TextStyle(fontSize: 30, letterSpacing: 1.5, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.teko().fontFamily),
                onClick: () {
                  Scrollable.ensureVisible(
                    GlobalKeys.KEY_WEB_HOME.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeOut,
                  );
                },
              ),
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
      ),
    );
  }
}
