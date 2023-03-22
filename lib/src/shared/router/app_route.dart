import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home/domain/transition.dart';

typedef AppRouteBuilder = Widget Function(BuildContext, GoRouterState);

class AppRoute extends GoRoute {
  AppRoute({
    required super.path,
    required AppRouteBuilder builder,
    super.name,
    super.routes,
    super.redirect,
  }) : super(
            pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey, child: builder(context, state)));
}

typedef AppShellRouteBuilder = Widget Function(
    BuildContext, GoRouterState, Widget);

class AppShellRoute extends ShellRoute {
  AppShellRoute(
      {required AppShellRouteBuilder builder,
      super.routes,
      super.navigatorKey,
      transition})
      : super(pageBuilder: (context, state, child) {
          var newBegin = const Offset(1.0, 0.0);
          var newEnd = const Offset(0.0, 0.0);
          var oldBegin = const Offset(0.0, 0.0);
          var oldEnd = const Offset(-1.0, 0.0);
          if (transition == Transition.left) {
            newBegin = const Offset(-1.0, 0.0);
            oldEnd = const Offset(1.0, 0.0);
          }
          return CustomTransitionPage(
              child: builder(context, state, child),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                if (transition == Transition.none) {
                  return child;
                }
                return SlideTransition(
                  position:
                      Tween(begin: newBegin, end: newEnd).animate(animation),
                  child: SlideTransition(
                      position: Tween(begin: oldBegin, end: oldEnd)
                          .animate(secondaryAnimation),
                      child: child),
                );
              });
        });
}
