import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/widgets/mob_menu_header.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/widgets/tabs_widget.dart';

class HomeScreenMobBody extends StatelessWidget {
  const HomeScreenMobBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MobMenuHeader(),
        Expanded(child: TabsWidget()),
      ],
    );
  }
}
