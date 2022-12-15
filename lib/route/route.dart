import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../view/pages/actualities_page.dart';
import '../view/pages/login_page.dart';
import '../view/pages/profil_page.dart';
import '../view/pages/signup_page.dart';
import '../view/shared/bottom_navigation.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) {
        return const SignupPage();
      },
    ),
    GoRoute(
      path: '/actualities',
      builder: (BuildContext context, GoRouterState state) {
        return const Actualities();
      },
    ),
    GoRoute(
      path: '/profil',
      builder: (BuildContext context, GoRouterState state) {
        return const Profil();
      },
    ),
    GoRoute(
      path: '/main',
      builder: (BuildContext context, GoRouterState state) {
        return const BottomNavigationBarElement();
      },
    )

  ],
);