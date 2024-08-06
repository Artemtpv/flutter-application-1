import 'package:flutter/material.dart';
import 'package:flutter_application_1/text/text.dart';

class SecondImage extends StatefulWidget {
  const SecondImage({super.key});

  @override
  State<SecondImage> createState() => _SecondImageState();
}

class _SecondImageState extends State<SecondImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.fromLTRB(
              25.0,
              50.0,
              25.0,
              0.0,
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
              image: const DecorationImage(
                opacity: 0.6,
                image: AssetImage('assets/images/doom.jpg'),
                fit: BoxFit.fill,
              ),
              color: const Color.fromARGB(31, 56, 55, 55).withOpacity(1.0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            height: 400,
            width: 150,
            child: const Stack(
              alignment: Alignment.bottomLeft,
              children: [
                TextWidgetComponents(
                  text:
                      'Новый дом - новыe возможности: началось строительство комплекса "Олимп"',
                  colors: Colors.white,
                  size: 32,
                  weight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ],
            ),
          ); // второе центральное фото дома
  }
}