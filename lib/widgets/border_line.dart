import 'package:flutter/material.dart';

class BorderLine extends StatelessWidget {
  const BorderLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.black12,
      margin: const EdgeInsets.fromLTRB(
        20,
        10,
        20,
        5,
      ),
    );
  }
}
