import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPassed extends StatelessWidget {
  const VerificationPassed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/background.jpg',
                ),
              ),
            ),
          ), // фоновое изображение
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage('assets/icons/check.png'),
                  size: 180,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Верификация пройдена!',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
