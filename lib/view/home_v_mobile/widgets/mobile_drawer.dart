import 'package:flutter/material.dart';

import '../../../core/functions.dart';
import '../../../core/global_keys.dart';
import '../../../core/pallete.dart';
import '../../../models/web_action_model.dart';
import '../../home_v_web/widgets/navbar_logo.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  void _scrollToSection(BuildContext context, int index) {
    final keys = [
      GlobalKeys.KEY_MOB_HOME,
      GlobalKeys.KEY_MOB_ABOUTME,
      GlobalKeys.KEY_MOB_MOBILEPORTFOLIO,
      GlobalKeys.KEY_MOB_CONTACTME,
    ];

    if (index < keys.length && keys[index].currentContext != null) {
      Scrollable.ensureVisible(
        keys[index].currentContext!,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeOut,
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Pallete.blackColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: NavBarLogo(),
              ),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: Pallete.whiteColor.withValues(alpha: .4),
                        onPressed: () => _scrollToSection(context, e.key),
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: Pallete.whiteColor,
                          ),
                          title: Text(
                            e.value,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: Pallete.whiteColor.withValues(alpha: .2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    //side: BorderSide(color: AppTheme.c!.primary!),
                  ),
                  onPressed: () => launchWithUri(url: SE_RESUMEURL),
                  child: const ListTile(
                    leading: Icon(
                      Icons.control_camera_outlined,
                      color: Colors.red,
                    ),
                    title: Text(
                      'RESUME',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarUtils {
  static const List<String> names = [
    'Home',
    'About',
    'Projects',
    'Contact',
  ];

  static const List<IconData> icons = [
    Icons.home,
    Icons.person,
    Icons.work,
    Icons.contact_page,
  ];
}
