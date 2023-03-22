import 'package:money_saver/src/shared/home/domain/view.dart';
import 'package:money_saver/src/shared/home/presentation/controllers/transition_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/transition.dart';

part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {
  @override
  View build() => View.summary;

  void nextView() {
    if (state == View.summary) {
      state = View.forecast;
      ref.watch(transitionControllerProvider.notifier).state = Transition.left;
    } else if (state == View.forecast) {
      state = View.transactions;
      ref.watch(transitionControllerProvider.notifier).state = Transition.left;
    }
  }

  void previousView() {
    if (state == View.transactions) {
      state = View.forecast;
      ref.watch(transitionControllerProvider.notifier).state = Transition.right;
    } else if (state == View.forecast) {
      state = View.summary;
      ref.watch(transitionControllerProvider.notifier).state = Transition.right;
    }
  }
}
