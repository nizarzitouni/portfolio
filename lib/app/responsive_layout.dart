import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/singlton_init.dart';

import '../core/size_config.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key, required this.screenWeb, required this.screenMobile});
  final Widget screenWeb;
  final Widget screenMobile;

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    analytics.setAnalyticsCollectionEnabled(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        SizeConfig().init(context);
        return widget.screenWeb;
        // return const HomeScreenWeb();
      } else {
        SizeConfig().init(context);
        return widget.screenMobile;
        // return const HomeScreenMob();
      }
    });
  }
}
