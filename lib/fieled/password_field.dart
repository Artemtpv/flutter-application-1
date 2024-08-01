import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatelessWidget {
  final String? text;
  final Widget clild;
  final double size;
  final FontWeight weight;
  final Color colors;
  final FontStyle fontStyle;
  final InputDecoration decoration;
  final InputBorder border;
  const PasswordField({
    super.key,
    required this.decoration,
    required this.border,
    required this.clild,
    this.text,
    required this.size,
    required this.weight,
    required this.colors,
    required this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: SizedBox(
              height: 50,
              child: TextField(
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: size,
                  fontWeight: weight,
                  fontStyle: FontStyle.normal,
                  color: colors,
                ),
                obscureText: true,
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
