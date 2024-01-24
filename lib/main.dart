import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nizar_ztn_portfolio/view/home_v_movile/home_screen_mob.dart';

import 'core/config/app_information.dart';
import 'core/pallete.dart';
import 'core/routes/app_pages.dart';
import 'responsive/responsive_layout.dart';
import 'view/home_v_web/home_screen_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      theme: ThemeData.dark().copyWith(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Pallete.blackColor,
        //textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      title: AppInformation.title,
      // initialBinding: NetworkBinding(),
      // home: const BotNavBar(),
      // initialRoute: AppRoutes.MAINSCREEN,
      getPages: AppPages.pages,
      home: const ResponsiveLayout(
        mobileScreen: HomeScreenMob(),
        webScreen: HomeScreenWeb(),
      ),
    );
  }
}
