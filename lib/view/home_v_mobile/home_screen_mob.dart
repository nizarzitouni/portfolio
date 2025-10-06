import 'package:flutter/material.dart';

import 'widgets/home_screen_mob_body.dart';
import 'widgets/mobile_drawer.dart';

class HomeScreenMob extends StatelessWidget {
  const HomeScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: MobileDrawer(),
      body: HomeScreenMobBody(),
    );
  }
}
