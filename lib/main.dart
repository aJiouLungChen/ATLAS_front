import 'package:client/screens/auth_page.dart';
import 'package:client/screens/entrance_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(ATLAS());
}

class ATLAS extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: "/",
        name: "Entrance page",
        builder: (BuildContext context, GoRouterState state) => EntrancePage()
      ),
      GoRoute(
        path: "/auth",
        name: "auth page",
          builder: (BuildContext context, GoRouterState state) => AuthPage()
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}