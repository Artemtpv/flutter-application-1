import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FiledHome extends StatelessWidget {
  final String? text;
  final Widget clild;

  final InputDecoration decoration;
  final InputBorder border;
  final Color colors;
  final double size;
  final FontWeight weight;
  final FontStyle fontStyle;
  const FiledHome(
      {super.key,
      required this.decoration,
      required this.border,
      required this.clild,
      this.text,
      required this.colors,
      required this.size,
      required this.weight,
      required this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: SizedBox(
              height: 25,
              child: TextField(
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: size,
                  fontWeight: weight,
                  fontStyle: FontStyle.normal,
                  color: colors,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 4),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      'assets/icons/search.png',
                      color: const Color.fromRGBO(21, 21, 34, 100),
                    ),
                  ),
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
