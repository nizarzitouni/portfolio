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



// class GoRouterObserver extends NavigatorObserver {
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print('Pushed route: ${route.str}');
//     if (previousRoute != null) {
//       print('previousRoute: ${previousRoute.str}');
//     }
//   }

//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print('Popped route: ${route.str}');
//     if (previousRoute != null) {
//       print('previousRoute: ${previousRoute.str}');
//     }
//   }

//   @override
//   void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     print('Removed route: ${route.str}');
//     if (previousRoute != null) {
//       print('previousRoute: ${previousRoute.str}');
//     }
//   }

//   @override
//   void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
//     print('Replaced newRoute: ${newRoute!.str}');
//     print('oldRoute: ${oldRoute!.str}');
//   }
// }

// extension on Route<dynamic> {
//   String get str => 'route(${settings.name}: ${settings.arguments})';
// }
