import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_components/home_components.dart';
import 'package:flutter_application_1/home/home_components/home_images/another_imaages.dart';
import 'package:flutter_application_1/home/home_components/home_images/horizontal_images.dart';
import 'package:flutter_application_1/home/home_components/home_texts/first_text.dart';
import 'package:flutter_application_1/text/text.dart';
import 'package:flutter_application_1/widgets/app_bar_user.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const TopWidget(),
      ),
      body: ListView(
        children: [
          const FieldContain(),

          Container(
            margin: const EdgeInsets.fromLTRB(
              10.0,
              10.0,
              10.0,
              0.0,
            ),
            height: 140,
            child: const HorizontalImages(),
          ), //  горизонтальный, прокручиваемый фото ряд
          const AnotherImaage(),
          // первое центральное фото дома
          const FirstText(),
          // первый текст под фото

          Container(
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
          ), // второе центральное фото дома
          // Обязательно почитай про ListView.builder.
          // Это тебе понадобится даже при отсутствии API от бэка, чтобы сразу подготовить верстку фронта к будущему подключению API при этом не нагружая код
          Container(
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
          ), // второй текст под фото
        ],
      ),
    );
  }
}
