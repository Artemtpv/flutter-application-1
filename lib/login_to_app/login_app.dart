import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  20,
                  282,
                  20,
                  10,
                ),
                child: const ImageIcon(
                  size: 110,
                  color: Color.fromRGBO(217, 217, 217, 100),
                  AssetImage('assets/icons/home-fill.png'),
                ),
              ), // иконка домв

              Container(
                margin: const EdgeInsets.fromLTRB(
                  106,
                  324,
                  20,
                  10,
                ),
                child: const ImageIcon(
                  AssetImage('assets/icons/location.png'),
                  size: 68,
                  color: Color.fromRGBO(94, 112, 255, 20),
                ),
              ), // иконка метки
              Container(
                margin: const EdgeInsets.only(top: 380),
                color: const Color.fromRGBO(217, 217, 217, 100),
                width: 30,
                height: 2,
              ),
            ],
          ), // центральные иконки дома и метки
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ГЕСТИЯ',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ), // название приложения
          Container(
            margin: const EdgeInsets.fromLTRB(
              40,
              10,
              20,
              0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Мобильное приложение с кадастровой картой.',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: const Color.fromRGBO(153, 153, 153, 100),
                  ),
                ),
                Text(
                  'Для помощи в строительстве',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: const Color.fromRGBO(153, 153, 153, 100),
                  ),
                ),
              ],
            ),
          ), // текс по ценру расположеннный под назвванием приложения
          Stack(
            children: [
              Container(
                height: 60,
                width: 400,
                margin: const EdgeInsets.fromLTRB(
                  20,
                  180,
                  20,
                  10,
                ),
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
                  onPressed: () {},
                  child: Text(
                    'Регистрация',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ), // кнопка регистрации
              Container(
                margin: const EdgeInsets.fromLTRB(
                  28,
                  192,
                  20,
                  10,
                ),
                child: const ImageIcon(
                  color: Colors.white,
                  size: 35,
                  AssetImage('assets/icons/email.png'),
                ),
              ), // иконка имайла
              Container(
                margin: const EdgeInsets.fromLTRB(
                  80,
                  190,
                  0,
                  10,
                ),
                width: 3,
                child: const ImageIcon(
                  color: Color.fromRGBO(255, 255, 255, 30),
                  size: 40,
                  AssetImage('assets/icons/line.png'),
                ),
              ), // разделительная вертикальная линия
            ],
          ), // кнопка регистрации с иконкой имейла и разделительной вертикальной линией
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'или',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ), // текст под первой кнопкой
          Stack(
            children: [
              Container(
                height: 60,
                width: 400,
                margin: const EdgeInsets.fromLTRB(
                  20,
                  10,
                  20,
                  0,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(78, 174, 255, 100),
                    foregroundColor: const Color.fromARGB(66, 0, 0, 0),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Вход',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ), // кнопка входа
              Container(
                margin: const EdgeInsets.fromLTRB(
                  25,
                  23,
                  20,
                  0,
                ),
                child: const ImageIcon(
                  color: Colors.white,
                  size: 35,
                  AssetImage('assets/icons/entrance.png'),
                ),
              ), // иконка входа
              Container(
                margin: const EdgeInsets.fromLTRB(
                  80,
                  19,
                  0,
                  10,
                ),
                width: 3,
                child: const ImageIcon(
                  color: Color.fromRGBO(255, 255, 255, 30),
                  size: 40,
                  AssetImage('assets/icons/line.png'),
                ),
              ), // разделительная вертикальная линия
            ],
          ), // вторая кнопка(вход) с иконкой входа и разделитильной вертикальной линией
        ],
      ),
    );
  }
}
