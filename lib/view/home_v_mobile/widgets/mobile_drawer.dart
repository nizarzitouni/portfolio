import 'package:flutter/material.dart';

import '../../../core/functions.dart';
import '../../../core/pallete.dart';
import '../../../models/web_action_model.dart';
import '../../home_v_web/widgets/navbar_logo.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

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
                        hoverColor: Pallete.whiteColor.withOpacity(.4),
                        onPressed: () {
                          // scrollProvider.scrollMobile(e.key);
                          // Navigator.pop(context);
                        },
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
                  hoverColor: Pallete.whiteColor.withOpacity(.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    //side: BorderSide(color: AppTheme.c!.primary!),
                  ),
                  onPressed: () => launchWithUri(url: RESUMEURL),
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
    'Mobile Projects',
    '3D Projects',
    'CONTACT',
  ];

  static const List<IconData> icons = [
    Icons.home,
    Icons.person,
    Icons.work,
    Icons.build,
    Icons.settings,
    Icons.contact_page,
  ];
}
