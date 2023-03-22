import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_saver/src/screens/forecast.dart';
import 'package:money_saver/src/screens/transactions.dart';
import 'package:money_saver/src/shared/home/presentation/controllers/transition_controller.dart';
import 'package:money_saver/src/shared/router/app_route.dart';
import 'package:money_saver/src/shared/router/route_names.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../screens/summary.dart';
import '../home/presentation/widget.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _scaffoldShellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'scaffold shell');

@riverpod
GoRouter goRouter(GoRouterRef ref) => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/summary',
        routes: <RouteBase>[
          GoRoute(
              name: RouteNames.home,
              path: '/',
              redirect: (_, __) => '/summary'),
          AppShellRoute(
              navigatorKey: _scaffoldShellNavigatorKey,
              builder: (_, goRouterState, child) => HomeScreen(
                  route: goRouterState.name ?? RouteNames.summary,
                  child: child),
              routes: [
                AppRoute(
                    name: RouteNames.summary,
                    path: '/summary',
                    builder: (_, __) => const SummaryScreen()),
                AppRoute(
                    name: RouteNames.forecast,
                    path: '/forecast',
                    builder: (_, __) => const ForecastScreen()),
                AppRoute(
                    name: RouteNames.transactions,
                    path: '/transactions',
                    builder: (_, __) => const TransactionsScreen()),
              ],
              transition: ref.watch(transitionControllerProvider))
        ]);
