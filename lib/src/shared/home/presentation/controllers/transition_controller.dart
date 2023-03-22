import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/transition.dart';

part 'transition_controller.g.dart';

@Riverpod(keepAlive: true)
class TransitionController extends _$TransitionController {
  @override
  Transition build() => Transition.none;
}
