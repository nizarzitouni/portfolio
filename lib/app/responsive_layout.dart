import 'package:flutter/material.dart';

import '../core/size_config.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.screenWeb, required this.screenMobile});
  final Widget screenWeb;
  final Widget screenMobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        SizeConfig().init(context);
        return screenWeb;
        // return const HomeScreenWeb();
      } else {
        SizeConfig().init(context);
        return screenMobile;
        // return const HomeScreenMob();
      }
    });
  }
}
