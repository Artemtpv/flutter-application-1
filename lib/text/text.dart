import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidgetComponents extends StatelessWidget {
  final String text;
  final Color colors;
  final double size;
  final FontWeight weight;
  final FontStyle fontStyle;
  const TextWidgetComponents(
      {super.key,
      required this.text,
      required this.colors,
      required this.size,
      required this.weight,
      required this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: size,
            fontWeight: weight,
            fontStyle: FontStyle.normal,
            color: colors,
          ),
        ),
      ],
    );
  }
}
