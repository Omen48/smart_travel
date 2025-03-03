import 'package:smart_travel/presentation/bottom_menu/view/bottom_menu_view.dart';
import 'package:smart_travel/presentation/login/view/login_view.dart';
import 'package:smart_travel/presentation/main_screen/view/main_screen_view.dart';
import 'package:smart_travel/presentation/main_screen/widget/search_widget.dart';
import 'package:smart_travel/presentation/map_screen/view/map_view.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/presentation/splash/view/splash_view.dart';
import 'package:smart_travel/presentation/user_screen/view/user_info_view.dart';

abstract class RouterPath {
  static const splash = '/';
  static const auth = '/auth';
  static const places = '/places';
  static const search = 'search';
  static const map = '/map';
  static const user = '/userscreen';
}

final router = GoRouter(
  initialLocation: RouterPath.splash,
  routes: [
    GoRoute(
      path: RouterPath.splash,
      builder:
          (BuildContext context, GoRouterState state) => const SplashView(),
    ),
    GoRoute(
      path: RouterPath.auth,
      builder: (BuildContext context, GoRouterState state) => const LoginView(),
    ),
    StatefulShellRoute.indexedStack(
      builder:
          (
            BuildContext context,
            GoRouterState state,
            StatefulNavigationShell navigationShell,
          ) => BottomMenuView(navigationShell: navigationShell),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.places,
              builder:
                  (BuildContext context, GoRouterState state) =>
                      const MainScreenView(),
              routes: [
                GoRoute(
                  name: RouterPath.search,

                  path: RouterPath.search,
                  builder: (context, state) => const SearchWidget(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.map,
              builder:
                  (BuildContext context, GoRouterState state) =>
                      const MapView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.user,
              builder:
                  (BuildContext context, GoRouterState state) =>
                      const UserInfoView(),
            ),
          ],
        ),
      ],
    ),
  ],
);
