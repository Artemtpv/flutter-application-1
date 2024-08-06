import 'package:flutter/material.dart';

class HorizontalImages extends StatefulWidget {
  const HorizontalImages({super.key});

  @override
  State<HorizontalImages> createState() => _HorizontalImagesState();
}

class _HorizontalImagesState extends State<HorizontalImages> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: const EdgeInsets.fromLTRB(
              10.0,
              10.0,
              10.0,
              0.0,
            ),
            height: 140,
            child:  ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/dom.jpeg'),
              fit: BoxFit.fill,
            ),
            color: Colors.white12,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 130),
          // почему такие размеры? Обязательно изучение Padding, Margin на 23.07.2024 - сделано
          height: 500,
          width: 150,
        ), // первое фото в горизонтальном ряду
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/place.jpeg'),
              fit: BoxFit.fill,
            ),
            color: Colors.white12,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 130),
          height: 500,
          width: 150,
          //зачастую мы пишем приложение для РФ не нужно оставлять комментарии на ин языке. - исправлено
          // Если речь идет  международном проекте тогда коммиты и комментарии на ин языке в зависимости от страны производства - принято
        ), //второе фото в горизонтальном ряду
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: const DecorationImage(
              // Добавь изображение в формате png и svg. Для Svg нужно использовать отдельную библиотеку SvgPicture - pnd добавленно, svg - проблемы
              image: AssetImage('assets/images/home.jpeg'),
              fit: BoxFit.fill,
            ),
            color: Colors.white12,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 130),
          // опять та же проблема с размерами
          height: 500,
          width: 150,
        ), // третье фото в горизонтальном ряду
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/Earth.png'),
              fit: BoxFit.fill,
            ),
            color: Colors.white12,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 130),
          height: 500,
          width: 150,
        ), // четвертое фото в горизонтальном ряду формата png
      ],
    ),
          ); //  горизонтальный, прокручиваемый фото ряд

    
   
 }
}
