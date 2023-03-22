import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_saver/src/features/balance/presentation/controller.dart';
import 'package:money_saver/src/shared/palette.dart';

import '../../../shared/config.dart';
import '../../../shared/error.dart';

class BalanceWidget extends ConsumerWidget {
  const BalanceWidget({
    required this.monthDate,
    super.key,
  });

  final DateTime monthDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balance = ref.watch(balanceControllerProvider(monthDate: monthDate));
    return balance.when(
        error: (_, __) => const ErrorMSWidget(),
        loading: () => const CircularProgressIndicator(color: Palette.green),
        data: (balance) => Column(children: [
              if (monthDate.year == DateTime.now().year ||
                  monthDate.month == DateTime.now().month) ...[
                Row(
                  children: [
                    const Text("Current balance:"),
                    Text(balance.current.toStringAsFixed(2)),
                    Text(currency.symbol)
                  ],
                ),
              ],
              Row(
                children: [
                  const Text("Balance on the 1st:"),
                  Text(balance.init.toStringAsFixed(2)),
                  Text(currency.symbol)
                ],
              ),
              if (monthDate.year == DateTime.now().year &&
                  monthDate.month == DateTime.now().month) ...[
                Row(
                  children: [
                    const Text("Forecast at the END OF MONTH:"),
                    Text(balance.forecast.toStringAsFixed(2)),
                    Text(currency.symbol)
                  ],
                ),
              ] else ...[
                Row(
                  children: [
                    const Text("Balance at the end of the month:"),
                    Text(balance.last.toStringAsFixed(2)),
                    Text(currency.symbol)
                  ],
                ),
              ]
            ]));
  }
}
