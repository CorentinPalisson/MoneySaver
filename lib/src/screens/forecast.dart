import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:money_saver/src/shared/palette.dart';

class ForecastScreen extends ConsumerWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        color: Palette.darkBlue,
        child: Column(children: [
          const Text("Forecast"),
          Text(DateFormat.yMMMM('fr_BE').format(DateTime.now())),
        ]));
  }
}
