import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_saver/src/shared/router/router.dart';
import 'package:money_saver/src/shared/theme.dart';

class MoneySaverApp extends ConsumerWidget {
  const MoneySaverApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Money Saver',
      theme: bankingTheme(),
      routerConfig: router,
    );
  }
}
