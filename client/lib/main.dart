import 'package:client/src/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const ProviderScope(child: AtlasApp()));
}

class AtlasApp extends ConsumerWidget {
  const AtlasApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final atlasRouter = ref.watch(atlasRouterProvider);

    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routeInformationProvider: atlasRouter.router.routeInformationProvider,
      routeInformationParser: atlasRouter.router.routeInformationParser,
      routerDelegate: atlasRouter.router.routerDelegate,
    );
  }
}
