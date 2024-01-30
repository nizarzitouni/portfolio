import 'package:go_router/go_router.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/home_screen_mob.dart';
import 'package:nizar_ztn_portfolio/view/home_v_web/home_screen_web.dart';

import '../../app/responsive_layout.dart';
import '../../view/home_v_mobile/project_details_mob.dart';
import '../../view/home_v_web/project_deatails_web.dart';

const kHomeView = '/';
const kProjectView = '/projects/:projectId';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const ResponsiveLayout(
          screenWeb: HomeScreenWeb(),
          screenMobile: HomeScreenMob(),
        ),
      ),
      GoRoute(
        path: kProjectView,
        builder: (context, state) {
          return ResponsiveLayout(
            screenWeb: ProjectDeatailsWeb(projectId: state.pathParameters['projectId']!),
            screenMobile: ProjectDetailsMob(projectId: state.pathParameters['projectId']!),
          );
        },
      ),
    ],
  );
}
