import 'package:client/src/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(ProviderScope(child: AtlasApp()));
}

class AtlasApp extends ConsumerWidget {
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
