import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_navigator/bottom_navigator.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';

import 'package:flutter_application_1/widgets/border_line.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // для bottomNavigationBar заводится отдельная папка или же файл, он не должен находиться в файле основной программы - принято, требуется подробное разъеснение

      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(bottom: 150),
            child: IconButton(
              onPressed: () => GoRouter.of(context).push('/settings'),
              icon: const ImageIcon(
                size: 22,
                color: Colors.white,
                AssetImage('assets/icons/setting.png'),
              ),
            ),
          ),
        ],
        toolbarHeight: 210,

        flexibleSpace: Image.asset(
          'assets/images/doom.jpg',
          height: 260,
          fit: BoxFit.cover,
          opacity: const AlwaysStoppedAnimation(.9),
        ), // верхнее изображени дома
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // исправить
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 1,
                    spreadRadius: 2,
                  ),
                ], borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Antonio.jpeg'),
                    radius: 50,
                  ), // аватар пользователя
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Антонио Бандерас',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    'архитектор чгу',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ), // имя и должность пользователя
            ],
          ),
          const BorderLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '321K',
                      style: GoogleFonts.gabarito(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'подписчиков',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '298',
                      style: GoogleFonts.gabarito(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'публикаций',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                width: 170,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: CustomColors.bgPurple,
                    foregroundColor: const Color.fromARGB(
                      66,
                      0,
                      0,
                      0,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).go('/test'),
                  child: Text(
                    'подписаться',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ), // кнопока подписки на автора
            ],
          ), // три кнопки в горизонтальный ряд
          const BorderLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Text(
                  'Макеты',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    size: 30,
                    color: Color.fromRGBO(153, 153, 153, 100),
                    AssetImage('assets/icons/more.png'),
                  ),
                ),
              ),
            ],
          ), // текст предшествующий содержанию ниже и кнопка взаимодействия
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  30,
                  10,
                  20,
                  10,
                ),
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/dom.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/home.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ), // первая горизонтальная пара фото
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  30,
                  10,
                  20,
                  10,
                ),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/home.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/place.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ), // вторая горизонтальная пара фото
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  30,
                  10,
                  20,
                  10,
                ),
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/place.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/dom.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),

          // третья горизонтальная пара фото
        ],
      ),
    );
  }
}
