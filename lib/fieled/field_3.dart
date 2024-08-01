import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoField extends StatelessWidget {
  final String? text;
  final Widget clild;
  final double size;
  final FontWeight weight;
  final FontStyle fontStyle;
  final Color colors;
  final InputDecoration decoration;
  final InputBorder border;
  const InfoField({
    super.key,
    required this.decoration,
    required this.border,
    required this.clild,
    this.text,
    required this.size,
    required this.weight,
    required this.fontStyle,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: SizedBox(
              height: 150,
              child: TextField(
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: size,
                  fontWeight: weight,
                  fontStyle: FontStyle.normal,
                  color: colors,
                ),
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: text,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
