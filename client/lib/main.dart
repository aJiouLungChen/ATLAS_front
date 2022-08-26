import 'package:client/src/ui/auth_page/auth_page.dart';
import 'package:client/src/ui/entrance_page/entrance_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(ProviderScope(child: ATLAS()));
}

class ATLAS extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: "/",
          name: "Entrance page",
          builder: (BuildContext context, GoRouterState state) =>
              EntrancePage()),
      GoRoute(
          path: "/auth",
          name: "auth page",
          builder: (BuildContext context, GoRouterState state) => AuthPage())
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
