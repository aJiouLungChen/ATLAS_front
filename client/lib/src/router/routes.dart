import 'package:client/src/router/routes_name.dart';
import 'package:client/src/ui/auth_page/auth_page.dart';
import 'package:client/src/ui/entrance_page/entrance_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AtlasRouter {
  AtlasRouter(this._read);

  final Reader _read;

  late final router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: "/",
          name: entranceRouteName,
          builder: (BuildContext context, GoRouterState state) =>
              EntrancePage()),
      GoRoute(
          path: "/auth",
          name: authRouteName,
          builder: (BuildContext context, GoRouterState state) => AuthPage())
    ],
  );
}

final atlasRouterProvider = StateProvider<AtlasRouter>((ref) {
  //need add loginState as parameter in router
  return AtlasRouter(ref.read);
});