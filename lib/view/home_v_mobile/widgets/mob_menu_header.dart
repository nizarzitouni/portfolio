import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nizar_ztn_portfolio/core/global_keys.dart';

import '../../../core/size_config.dart';
import '../../home_v_web/widgets/navbar_logo.dart';

class MobMenuHeader extends StatelessWidget {
  const MobMenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: 10.0,
            onPressed: () {
              KEY_DRAWER.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          Gap(SizeConfig.screenWidth * .6),
          const NavBarLogo(),
        ],
      ),
    );
  }
}
