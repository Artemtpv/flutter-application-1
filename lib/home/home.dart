import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_components/home_components.dart';
import 'package:flutter_application_1/home/home_components/home_images/another_imaages.dart';
import 'package:flutter_application_1/home/home_components/home_images/horizontal_images.dart';
import 'package:flutter_application_1/home/home_components/home_images/second_image.dart';
import 'package:flutter_application_1/home/home_components/home_texts/first_text.dart';
import 'package:flutter_application_1/home/home_components/home_texts/second_text.dart';
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
        children: const [
          FieldContain(),
          // поисковая строка с иконкой поиска
          HorizontalImages(),
          // горизонтальный прокручиваемый фото ряд
          AnotherImaage(),
          // первое центральное фото дома
          FirstText(),
          // первый текст под фото
          SecondImage(),
        // второе центтральное фото
        SecondText(),
        // второй текст под фото
        ],
      ),
    );
  }
}
