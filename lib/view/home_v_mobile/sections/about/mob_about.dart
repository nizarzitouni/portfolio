import 'package:flutter/widgets.dart';

import '../../../../core/constants.dart';

class MobAbout extends StatelessWidget {
  const MobAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        LONGABOUT,
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
