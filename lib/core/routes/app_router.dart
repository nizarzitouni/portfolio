import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/responsive_layout.dart';
import '../../view/home_v_mobile/home_screen_mob.dart';
import '../../view/home_v_mobile/sections/project_details_mob.dart';
import '../../view/home_v_web/home_screen_web.dart';
import '../../view/home_v_web/sections/project_deatails_web.dart';
import '../../view/privacy_terms/legal_document_page.dart';
import '../../view/privacy_terms/model/legal_content.dart';
import 'error_page.dart';

const kHomeView = '/';
const kProjectView = 'projects/:projectId';
const kPrivacy = 'privacy-policy';
const kTerms = 'terms-of-service';

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
        routes: [
          GoRoute(
            path: kProjectView,
            builder: (context, state) {
              return ResponsiveLayout(
                screenWeb: ProjectDeatailsWeb(projectId: int.parse(state.pathParameters['projectId']!)),
                screenMobile: ProjectDetailsMob(projectId: int.parse(state.pathParameters['projectId']!)),
              );
            },
          ),
          GoRoute(
            path: kPrivacy,
            builder: (context, state) {
              return LegalDocumentPage(
                document: LegalContent.privacyPolicy,
              );
            },
          ),
          // Add terms of service route
          GoRoute(
            path: kTerms,
            builder: (context, state) {
              return LegalDocumentPage(
                document: LegalContent.termsAndConditions,
              );
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
