import 'package:flutter/material.dart';

import '../../../core/pallete.dart';
import '../../../core/utils/app_text_styles.dart';

class SmallBarTitle extends StatelessWidget {
  const SmallBarTitle({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Pallete.blackGreyColor,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          Container(
            color: Pallete.blackColor,
            height: 60,
            width: 280,
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
