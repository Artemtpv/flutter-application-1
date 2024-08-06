import 'package:flutter/material.dart';
import 'package:flutter_application_1/text/text.dart';

class SecondText extends StatefulWidget {
  const SecondText({super.key});

  @override
  State<SecondText> createState() => _SecondTextState();
}

class _SecondTextState extends State<SecondText> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.fromLTRB(
              25.0,
              0.0,
              25.0,
              10,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                ),
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Column(
              children: [
                TextWidgetComponents(
                  text:
                      'Если покупка квартиры не по карману, выпускники школ и их родители выбирают апартаменты. За 10 минут расскажем: что такое апартаменты и чем отличаются от квартиры, какой статус у апартаментов и почему апартаменты...',
                  colors: Colors.black,
                  size: 16,
                  weight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ],
            ),
          );// второй текст под фото
  }
}