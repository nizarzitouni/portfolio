import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/size_config.dart';

import '../view/home_v_movile/home_screen_mob.dart';
import '../view/home_v_web/home_screen_web.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        SizeConfig().init(context);
        return const HomeScreenWeb();
      } else {
        SizeConfig().init(context);
        return const HomeScreenMob();
      }
    });
  }
}
