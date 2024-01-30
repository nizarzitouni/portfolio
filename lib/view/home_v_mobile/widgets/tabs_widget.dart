import 'package:flutter/material.dart';
import 'package:nizar_ztn_portfolio/core/pallete.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/about/mob_about.dart';

import '../../../core/constants.dart';
import '../home/mob_home.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({Key? key}) : super(key: key);

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Create a TabController to control the tabs
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose the TabController when not needed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Pallete.blackGreyColor,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: _tabController,
            indicatorColor: Colors.blue, // Change the color to your preference
            tabs: const [
              Tab(text: "Home"),
              Tab(text: "About"),
              Tab(text: "Mobile Projects"),
              Tab(text: "3D Project"),
              Tab(text: "Contact"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              MobHome(),
              MobAbout(),
              Center(child: Text(MOBILEPROJECTS_HEADER)),
              Center(child: Text(THREED_HEADER)),
              Center(child: Text(CONTACT_HEADER)),
            ],
          ),
        ),
      ],
    );
  }
}
