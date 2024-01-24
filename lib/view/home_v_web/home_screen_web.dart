import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/pallete.dart';
import 'package:nizar_ztn_portfolio/core/size_config.dart';

import 'widgets/home_screen_web_body.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      //backgroundColor: Pallete.blackGreyColor,
      body: HomeScreenWebBody(),
    );
  }
}
