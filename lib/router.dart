import 'package:first_app/RouteConstant.dart';
import 'package:first_app/page/homepage.dart';
import 'package:first_app/page/loginpage.dart';
import 'package:first_app/page/rapor.dart';
import 'package:first_app/widget/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
          name: RouteConstant.login,
          path: '/',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(child: loginpage());
          }),
      GoRoute(
        name: RouteConstant.bottomnavbar,
        path: '/bottomnavbar',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return MaterialPage(child: bottomnavbar());
        },
      ),
      GoRoute(
        // name: RouteConstant.rapor,
        path: '/rapor',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return MaterialPage(child: rapor());
        },
      )
    ],
  );
}
