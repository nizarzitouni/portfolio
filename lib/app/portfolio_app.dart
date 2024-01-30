import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/routes/app_router.dart';

import '../core/config/app_information.dart';
import '../core/pallete.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Pallete.blackColor),
      title: AppInformation.title,
      routerConfig: AppRouter.router,
      // routerDelegate: AppRouter.router.routerDelegate,
      // routeInformationParser: AppRouter.router.routeInformationParser,
    );
  }
}
