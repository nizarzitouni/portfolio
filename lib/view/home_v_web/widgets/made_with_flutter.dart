import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/constants.dart';

import '../../../core/functions.dart';
import 'hover_underline.dart';

class MadeWithFlutterButton extends StatelessWidget {
  const MadeWithFlutterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        double containerWidth = constraints.maxWidth * 0.7;
        return SizedBox(
          width: containerWidth,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
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
        );
      }),
    );
  }
}
