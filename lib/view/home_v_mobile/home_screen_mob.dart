import 'package:flutter/material.dart';

import 'widgets/home_screen_mob_body.dart';

class HomeScreenMob extends StatelessWidget {
  const HomeScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenMobBody(),
    );
  }
}
