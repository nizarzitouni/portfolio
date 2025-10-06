import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import '../../../models/projects_data.dart';
import '../sections/about/mob_about.dart';
import '../sections/contact/mob_contact.dart';
import '../sections/home/mob_home.dart';
import '../sections/projects/mob_flutter_projects.dart';
import 'mob_menu_header.dart';

class HomeScreenMobBody extends StatelessWidget {
  const HomeScreenMobBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobMenuHeader(key: GlobalKeys.KEY_MOB_HEADER),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              color: Pallete.blackColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MobHome(key: GlobalKeys.KEY_MOB_HOME),
                  const Gap(20),
                  MobAbout(key: GlobalKeys.KEY_MOB_ABOUTME),
                  const Gap(20),
                  MobFlutterProjects(
                    key: GlobalKeys.KEY_MOB_MOBILEPORTFOLIO,
                    projectModelsList: ProjectData.mobileDevProjectList,
                  ),
                  const Gap(20),
                  MobContact(key: GlobalKeys.KEY_MOB_CONTACTME),
                  const Gap(40),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
