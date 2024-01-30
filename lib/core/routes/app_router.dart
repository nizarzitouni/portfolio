import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nizar_ztn_portfolio/view/home_v_mobile/home_screen_mob.dart';
import 'package:nizar_ztn_portfolio/view/home_v_web/home_screen_web.dart';

import '../../app/responsive_layout.dart';
import '../../view/home_v_mobile/sections/project_details_mob.dart';
import '../../view/home_v_web/sections/project_deatails_web.dart';
import 'error_page.dart';

const kHomeView = '/';
const kProjectView = 'projects/:projectId';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'home',
          path: kHomeView,
          builder: (context, state) => const ResponsiveLayout(
                screenWeb: HomeScreenWeb(),
                screenMobile: HomeScreenMob(),
              ),
          routes: [
            GoRoute(
              name: 'project_details',
              path: kProjectView,
              builder: (context, state) {
                return ResponsiveLayout(
                  screenWeb: ProjectDeatailsWeb(projectId: state.pathParameters['projectId']!),
                  screenMobile: ProjectDetailsMob(projectId: state.pathParameters['projectId']!),
                );
              },
            ),
          ]),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
