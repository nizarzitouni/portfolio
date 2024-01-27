import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/constants.dart';
import 'package:nizar_ztn_portfolio/core/size_config.dart';

import '../../../core/functions.dart';
import 'hover_underline.dart';

class MadeWithFlutterButton extends StatelessWidget {
  const MadeWithFlutterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeConfig.screenWidth * .7,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Made with ", style: TextStyle(fontSize: 16)),
            const Icon(
              Icons.favorite,
              size: 20,
              color: Colors.red,
            ),
            const Text(" in ", style: TextStyle(fontSize: 16)),
            SizedBox(width: 20, height: 20, child: Image.asset(AssetsConstants.flutterImage)),
            GestureDetector(
                onTap: () {
                  launchWithUri(url: "https://flutter.dev/");
                },
                child: const HoverUnderlineText(text: "Flutter", textStyle: TextStyle(fontSize: 16)))
          ],
        ),
      ),
    );
  }
}
