import 'package:flutter/material.dart';

import 'mob_menu_header.dart';
import 'tabs_widget.dart';

class HomeScreenMobBody extends StatelessWidget {
  const HomeScreenMobBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MobMenuHeader(),
        Expanded(child: TabsWidget()),
      ],
    );
  }
}
