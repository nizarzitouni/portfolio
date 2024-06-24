// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nizar_ztn_portfolio/core/pallete.dart';
// import 'package:universal_html/html.dart' as html;

import '../../../../../core/functions.dart';
import '../../../../../models/web_action_model.dart';

class ProfileInfo extends StatelessWidget {
  final String name;
  final String position;
  final String basedIn;
  final String about;
  final List<WebActionModel>? webActions;

  const ProfileInfo({super.key, required this.name, required this.position, required this.basedIn, required this.about, this.webActions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 36, letterSpacing: 1, fontWeight: FontWeight.w700),
          ),
        ),
        const Gap(20),
        Text(
          position,
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500, fontFamily: GoogleFonts.teko().fontFamily, color: Pallete.whiteColor),
        ),
        Text("Based in $basedIn", style: const TextStyle(fontSize: 18)),
        const Gap(10),
        Text(about, style: const TextStyle(fontSize: 18)),
        if (webActions != null) const Gap(20),
        if (webActions != null)
          Wrap(
            direction: Axis.horizontal,
            spacing: 0,
            children: [
              for (final wActions in webActions!)
                wActions.text == null
                    ? RawMaterialButton(
                        constraints: const BoxConstraints(
                          maxWidth: 20,
                          minWidth: 20,
                          maxHeight: 20,
                          minHeight: 20,
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        hoverColor: Pallete.whiteColor.withOpacity(.4),
                        onPressed: () {
                          launchWithUri(url: wActions.webUrl);
                        },
                        child: SvgPicture.asset(
                          wActions.assetImagePath,
                          height: 18,
                          width: 18,
                          // color: Pallete.whiteColor,
                          colorFilter: const ColorFilter.mode(Pallete.whiteColor, BlendMode.srcIn),
                        ),
                      )
                    : RawMaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        hoverColor: Pallete.whiteColor.withOpacity(.2), // Set the hover color
                        fillColor: Pallete.whiteColor.withOpacity(.1),
                        onPressed: () {
                          launchWithUri(url: wActions.webUrl);
                          // html.window.open(wActions.webUrl, "pdf");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              wActions.assetImagePath,
                              height: 20,
                              width: 20,
                              colorFilter: const ColorFilter.mode(Pallete.whiteColor, BlendMode.srcIn),
                              // color: Pallete.whiteColor,
                            ),
                            const SizedBox(width: 6.0),
                            Text(
                              wActions.text!,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
            ],
          ),
      ],
    );
  }
}
