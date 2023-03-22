import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:money_saver/src/features/balance/presentation/widget.dart';

class SummaryScreen extends ConsumerWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      Text(DateFormat.yMMMM('fr_BE').format(DateTime.now())),
      BalanceWidget(monthDate: DateTime.now())
    ]);
  }
}
