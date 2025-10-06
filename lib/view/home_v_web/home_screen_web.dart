import 'package:flutter/material.dart';

import 'widgets/home_screen_web_body.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenWebBody(),
    );
  }
}
