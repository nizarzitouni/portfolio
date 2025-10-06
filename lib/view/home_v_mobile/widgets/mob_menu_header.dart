import 'package:flutter/material.dart';

import '../../../core/pallete.dart';
import '../../home_v_web/widgets/navbar_logo.dart';

class MobMenuHeader extends StatelessWidget {
  const MobMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.blackGreyColor,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}
