import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_saver/src/shared/home/domain/view.dart';
import 'package:money_saver/src/shared/palette.dart';
import 'package:money_saver/src/shared/router/route_names.dart';
import 'package:money_saver/src/shared/router/router.dart';

import '../domain/transition.dart';
import 'controllers/home_controller.dart';
import 'controllers/transition_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({required this.child, required this.route, super.key});

  final Widget child;
  final String route;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentView = ref.watch(homeControllerProvider);
    final currentViewController = ref.watch(homeControllerProvider.notifier);
    double swipeDistance = 0;
    return SizedBox.expand(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          swipeDistance += details.delta.dx;
          if (swipeDistance > 150) {
            swipeDistance = 0;
            currentViewController.previousView();
            _onChange(ref);
          }

          // Swiping in left direction.
          if (swipeDistance < -150) {
            swipeDistance = 0;
            currentViewController.nextView();
            _onChange(ref);
          }
        },
        onHorizontalDragEnd: (details) {
          swipeDistance = 0;
        },
        child: Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedIconTheme: const IconThemeData(opacity: 0.0, size: 0),
            unselectedIconTheme: const IconThemeData(opacity: 0.0, size: 0),
            selectedItemColor: Palette.green,
            selectedLabelStyle: const TextStyle(fontSize: 18),
            unselectedLabelStyle: const TextStyle(fontSize: 15),
            items: const [
              BottomNavigationBarItem(
                  icon: SizedBox.shrink(), label: "Summary"),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: "Forecast",
              ),
              BottomNavigationBarItem(
                  icon: SizedBox.shrink(), label: "Transactions")
            ],
            currentIndex: currentView.index,
            onTap: (index) => _onItemSelected(context, ref, index),
          ),
        ),
      ),
    );
  }

  // int fromViewToIndex(View view) {
  //   var index = 0;
  //   switch (view) {
  //     case View.forecast:
  //       {
  //         index = 1;
  //         break;
  //       }
  //     case View.transactions:
  //       {
  //         index = 2;
  //         break;
  //       }
  //     case View.summary:
  //       break;
  //   }
  //   return index;
  // }

  String fromViewToRouteNames(View view) {
    String name = "";
    switch (view) {
      case View.summary:
        {
          name = RouteNames.summary;
          break;
        }

      case View.forecast:
        {
          name = RouteNames.forecast;
          break;
        }
      case View.transactions:
        {
          name = RouteNames.transactions;
          break;
        }
    }
    return name;
  }

  void _onItemSelected(BuildContext context, WidgetRef ref, int index) {
    final homeController = ref.read(homeControllerProvider.notifier);
    View view = View.summary;
    switch (index) {
      case 0:
        {
          break;
        }
      case 1:
        {
          view = View.forecast;
          break;
        }
      case 2:
        {
          view = View.transactions;
          break;
        }
    }
    homeController.state = view;
    ref.watch(transitionControllerProvider.notifier).state = Transition.none;
    _onChange(ref);
  }

  void _onChange(WidgetRef ref) {
    String name = "";
    var view = ref.read(homeControllerProvider);
    switch (view) {
      case View.summary:
        {
          name = RouteNames.summary;
          break;
        }

      case View.forecast:
        {
          name = RouteNames.forecast;
          break;
        }
      case View.transactions:
        {
          name = RouteNames.transactions;
          break;
        }
    }
    ref.read(goRouterProvider).goNamed(name);
  }
}
