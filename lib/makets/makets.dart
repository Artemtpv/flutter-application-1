import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMakets extends StatefulWidget {
  const MyMakets({super.key});

  @override
  State<MyMakets> createState() => _MyMaketsState();
}

class _MyMaketsState extends State<MyMakets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () => GoRouter.of(context).push('/test'),
              label: Text(
                'user',
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              icon: const ImageIcon(
                AssetImage('assets/icons/user.png'),
                color: Color.fromRGBO(21, 21, 34, 100),
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const ImageIcon(
                    color: Color.fromRGBO(21, 21, 34, 100),
                    AssetImage(
                      'assets/icons/notification.png',
                    ),
                  ),
                  onPressed: () {},
                ), // кнопка в виде иконки уведомления
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(
              0.0,
              1.0,
              0.0,
              0.0,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 55,
                  offset: Offset.zero,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 20,
            ),
            height: 90,
            width: 160,
            child: InkWell(
              splashColor: Colors.black12,
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/home.jpeg'),
                        radius: 35,
                      ), // округлое изображени слева

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Макет от 23.07.2024',
                            style: GoogleFonts.raleway(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ), //верхний текст
                          Text(
                            'июль 23, 2024 10.23',
                            style: GoogleFonts.roboto(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.black54,
                            ),
                          ), // нижний текс
                        ],
                      ), // текст первой кнопки
                    ],
                  ), //округлое изображени с текстом первой кнопки
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black38,
                      ), // иконка стрелки
                    ],
                  ),
                ],
              ),
            ),
          ), // первая кнопка с округлым изображением слева, текстом посередине и иконкой справа
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 1,
              horizontal: 0,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 30,
                  offset: Offset(0, 25),
                ),
              ],
              color: Color.fromARGB(180, 255, 255, 255),
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 20,
            ),
            height: 90,
            width: 160,
            child: InkWell(
              splashColor: Colors.black12,
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/place.jpeg'),
                        radius: 35,
                      ), // округлое изображени слева

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Дача Василия',
                            style: GoogleFonts.raleway(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ), // верхний текст
                          Text(
                            'июль 12, 2024 19.48',
                            style: GoogleFonts.roboto(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.black54,
                            ),
                          ), // нижний текст
                        ],
                      ), // текст второй кнопки
                    ],
                  ), // округлое изображени с текстом второй кнопки
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black38,
                      ), // иконка стрелки
                    ],
                  ),
                ],
              ),
            ),
          ), // вторая кнопка с округлым изображением слева, текстом посередине и иконкой справа
        ],
      ),
    );
  }
}
