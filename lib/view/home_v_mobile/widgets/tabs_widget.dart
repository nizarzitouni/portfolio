import 'package:flutter/material.dart';

import '../../../core/pallete.dart';
import '../../../models/projects_data.dart';
import '../sections/about/mob_about.dart';
import '../sections/contact/mob_contact.dart';
import '../sections/home/mob_home.dart';
import '../sections/projects/mob_flutter_projects.dart';

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
              // Tab(text: "3D Project"),
              Tab(text: "Contact"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              const MobHome(),
              const MobAbout(),
              MobFlutterProjects(projectModelsList: ProjectData.mobileDevProjectList),
              // MobFlutterProjects(projectModelsList: ProjectData.threeDProjectList),
              const MobContact(),
            ],
          ),
        ),
      ],
    );
  }
}
