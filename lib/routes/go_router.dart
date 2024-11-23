import 'package:smart_travel/core/widgets/bottom_navigation_widget.dart';
import 'package:smart_travel/presentation/login/widget/login_screen.dart';
import 'package:smart_travel/presentation/login/widget/recover_screen.dart';
import 'package:smart_travel/presentation/map_screen/widget/map_screen.dart';
import 'package:smart_travel/presentation/places_with_recomendations/widget/places_screen.dart';
import 'package:smart_travel/presentation/places_with_recomendations/widget/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/presentation/splash/widget/splash.dart';
import 'package:smart_travel/presentation/user_screen/widget/user_screen.dart';

final router = GoRouter(
  initialLocation: '/startscreen',
  routes: [
    GoRoute(
      path: '/startscreen',
      builder: (BuildContext context, GoRouterState state) =>
          const StartScreen(),
    ),
    GoRoute(
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) =>
          const OpenScreen(),
      routes: [
        GoRoute(
          path: 'recover',
          builder: (BuildContext context, GoRouterState state) =>
              const RecoverScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/mainscr',
      builder: (BuildContext context, GoRouterState state) =>
          const StartScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return BottomNavigationWidget(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/places',
              builder: (BuildContext context, GoRouterState state) =>
                  const PlacesScreen(),
              routes: [
                GoRoute(
                  path: 'search',
                  builder: (context, state) => const SearchScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/map',
              builder: (BuildContext context, GoRouterState state) =>
                  const MapScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/userscreen',
              builder: (BuildContext context, GoRouterState state) =>
                  const UserInfoScreen(),
            ),
          ],
        )
      ],
    ),
  ],
);
