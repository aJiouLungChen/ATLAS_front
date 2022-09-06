import 'package:client/src/router/routes_name.dart';
import 'package:client/src/ui/auth_page/auth_page.dart';
import 'package:client/src/ui/entrance_page/entrance_page.dart';
import 'package:client/src/ui/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AtlasRouter {
  AtlasRouter(this._read);

  // ignore: unused_field
  final Reader _read;

  late final router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
            path: "/",
            name: entranceRouteName,
            builder: (BuildContext context, GoRouterState state) {
              return const EntrancePage();
            }),
        GoRoute(
          path: "/auth",
          name: authRouteName,
          builder: (BuildContext context, GoRouterState state) =>
              const AuthPage(),
        ),
        GoRoute(
          path: "/main",
          name: "main page",
          builder: (BuildContext context, GoRouterState state) =>
              const MainPage(),
        ),
      ],
      redirect: (state) {
        final authCode = state.queryParams["code"];
        if (authCode != null) {
          _read(authCodeProvider.notifier).state = authCode.toString();
          return "/main";
        }
        return null;
      });
}

final atlasRouterProvider = StateProvider<AtlasRouter>((ref) {
  //need add loginState as parameter in router
  return AtlasRouter(ref.read);
});

final authCodeProvider = StateProvider<String>((ref) {
  return '';
});
