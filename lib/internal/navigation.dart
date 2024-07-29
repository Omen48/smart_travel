
import 'package:auth_study/presentation/screens.dart/map_screen.dart';
import 'package:auth_study/presentation/screens.dart/places_screen.dart';
import 'package:auth_study/presentation/screens.dart/user_screen.dart';
import 'package:auth_study/presentation/screens.dart/loadscreen.dart';
import 'package:auth_study/presentation/widgets/bottom_navigation_widget.dart';
import 'package:auth_study/presentation/screens.dart/login_screen.dart';
import 'package:auth_study/presentation/screens.dart/recover_screen.dart';
import 'package:auth_study/presentation/screens.dart/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
