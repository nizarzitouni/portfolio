import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/widgets/mobile_drawer.dart';

import '../../core/global_keys.dart';
import 'widgets/home_screen_mob_body.dart';

class HomeScreenMob extends StatelessWidget {
  const HomeScreenMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Pallete.blackColor,
      key: KEY_DRAWER,
      extendBodyBehindAppBar: true,
      drawer: const MobileDrawer(),
      body: const HomeScreenMobBody(),
    );
  }
}
