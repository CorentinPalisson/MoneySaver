import 'dart:async';

import 'package:money_saver/src/features/balance/data/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model.dart';

part 'controller.g.dart';

@riverpod
class BalanceController extends _$BalanceController {
  @override
  Future<Balance> build({
    required DateTime monthDate,
  }) async {
    final timer = Timer(const Duration(seconds: 10), ref.invalidateSelf);
    ref.onDispose(timer.cancel);
    final balance = await ref
        .watch(balanceRepositoryProvider)
        .fetch(monthDate.year, monthDate.month);
    return balance;
  }
}
