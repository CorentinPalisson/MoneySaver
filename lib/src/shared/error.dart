import 'package:flutter/material.dart';
import 'package:money_saver/src/shared/palette.dart';

class ErrorMSWidget extends StatelessWidget {
  const ErrorMSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.darkBlue,
      child: const Text(
        "Unavailable data",
        style: TextStyle(color: Palette.green),
      ),
    );
  }
}
