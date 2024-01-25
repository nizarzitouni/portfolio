import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/size_config.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;

  const ResponsiveLayout({super.key, required this.mobileScreen, required this.webScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        SizeConfig().init(context);
        return webScreen;
      } else {
        SizeConfig().init(context);
        return mobileScreen;
      }
    });
  }
}
