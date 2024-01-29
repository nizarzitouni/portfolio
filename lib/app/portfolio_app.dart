import 'package:flutter/material.dart';

import '../core/config/app_information.dart';
import '../core/pallete.dart';
import 'responsive_layout.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.blackColor,
        //textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      title: AppInformation.title,
      home: const ResponsiveLayout(),
    );
  }
}
