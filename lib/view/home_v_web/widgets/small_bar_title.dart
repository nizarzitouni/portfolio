import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/constants.dart';

import '../../../core/pallete.dart';
import '../../../core/size_config.dart';
import '../../../core/utils/app_text_styles.dart';

class SmallBarTitle extends StatelessWidget {
  const SmallBarTitle({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barsHight,
      width: SizeConfig.screenWidth,
      color: Pallete.blackGreyColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Pallete.blackColor,
            height: 60,
            width: 280,
            //margin: EdgeInsets.only(left: SizeConfig.screenWidth * 0.1),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: AppTextStyles.smallBarsTitle600style24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
