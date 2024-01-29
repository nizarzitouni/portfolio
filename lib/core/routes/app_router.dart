import 'package:go_router/go_router.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/home_screen_mob.dart';
import 'package:nizar_ztn_portfolio/view/home_v_web/home_screen_web.dart';

import '../../app/responsive_layout.dart';

const kHomeView = '/';
// const kSplashView = '/';
// const kHomeView = '/home';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const ResponsiveLayout(
          screenWeb: HomeScreenWeb(),
          screenMobile: HomeScreenMob(),
        ),
      ),
    ],
  );
}
