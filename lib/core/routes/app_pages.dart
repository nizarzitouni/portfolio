import 'package:get/get.dart';

import '../../view/home_v_movile/home_screen_mob.dart';
import 'app_routes.dart';

const _defaultTransition = Transition.native;

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOMESCREEN,
      page: () => const HomeScreenMob(),
      transition: _defaultTransition,
    ),
  ];
}
