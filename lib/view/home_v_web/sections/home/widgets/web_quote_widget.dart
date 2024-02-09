import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants.dart';

class WebQuoteWidget extends StatelessWidget {
  const WebQuoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 40,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Overthinking is the enemy of execution.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Padding(
                padding: EdgeInsets.all(11.0),
                child: Text(
                  "- Tony Robbins",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 8,
            child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                height: 42,
                width: 29,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AssetsConstants.quoteSvg),
                )),
          ),
          Positioned(
            right: 10,
            bottom: 40,
            child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                height: 42,
                width: 29,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AssetsConstants.quoteSvg),
                )),
          ),
        ],
      ),
    );
  }
}
