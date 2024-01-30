import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nizar_ztn_portfolio/core/routes/app_router.dart';

import '../core/config/app_information.dart';
import '../core/pallete.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Pallete.blackColor,
            //textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          title: AppInformation.title,
          // home: const ResponsiveLayout(),
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
