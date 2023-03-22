import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      const Text("Transactions"),
      Text(DateFormat.yMMMM('fr_BE').format(DateTime.now())),
    ]);
  }
}
