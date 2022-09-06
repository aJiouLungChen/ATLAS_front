import 'package:client/src/ui/entrance_page/widgets/fetch_user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(userInfoControllerProvider);
    return Container(
      child: userInfo.when(
        data: (userData) => Column(
          children: [
            Text(userData.email),
            Text(userData.name),
            Text(userData.picture)
          ],
        ),
        error: (e, __) => Text(e.toString()),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
