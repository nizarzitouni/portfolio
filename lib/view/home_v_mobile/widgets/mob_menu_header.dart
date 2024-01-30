import 'package:flutter/material.dart';

import '../../../core/pallete.dart';
import '../../home_v_web/widgets/navbar_logo.dart';

class MobMenuHeader extends StatelessWidget {
  const MobMenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.blackGreyColor,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NavBarLogo(),
        ],
      ),
    );
  }
}
