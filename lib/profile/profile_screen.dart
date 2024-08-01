import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreenVerTwo extends StatefulWidget {
  const ProfileScreenVerTwo({super.key});

  @override
  State<ProfileScreenVerTwo> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreenVerTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 0),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.all(
                const TextStyle(fontSize: 14, color: Colors.white60),
              ),
            ),
            child: NavigationBar(
              backgroundColor: CustomColors.bgBlack,
              onDestinationSelected: (int index) {
                setState(
                  () {},
                );
              },

              // вкладка избранное тебе не понадобится убери ее - исправлено
              destinations: const [
                NavigationDestination(
                  icon: ImageIcon(
                    AssetImage('assets/icons/home.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Главная',
                ), // раздел главная страница
                NavigationDestination(
                  icon: ImageIcon(
                    AssetImage('assets/icons/map.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Карта',
                ), // раздел карта
                NavigationDestination(
                  icon: ImageIcon(
                    AssetImage('assets/icons/bookmark.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Макеты',
                ), // раздел макеты
                NavigationDestination(
                  icon: ImageIcon(
                    AssetImage('assets/icons/user.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Профиль',
                ), // раздел профиль
              ],
            ), // нижнее навигационное поле,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/exit.png'),
                color: Color.fromRGBO(153, 153, 153, 100),
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const ImageIcon(
                    AssetImage('assets/icons/setting.png'),
                    color: Color.fromRGBO(153, 153, 153, 100),
                  ),
                  onPressed: () => GoRouter.of(context).push('/settings'),
                ), // кнопка в виде иконки настройки
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 50),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 1,
                      color: Colors.black38,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(60),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Antonio.jpeg'),
                    radius: 50,
                  ),
                ),
              ), // аватар пользователя
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Антонио Бандерас',
                    style: GoogleFonts.sintony(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 220,
                    margin: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: const Stack(
                      children: [
                        Text(
                          'antonbanderas007@gmail.com',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ), // фото, имя и почта пользователя
              Container(
                height: 1,
                color: Colors.black12,
                margin: const EdgeInsets.fromLTRB(
                  0,
                  10,
                  0,
                  0,
                ),
              ),
              Row(
                children: [
                  Container(
                    color: CustomColors.bgPurple,
                    height: 220,
                    width: 224,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 30, top: 30),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'изменить положение',
                              style: GoogleFonts.sintony(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage('assets/icons/globe.png'),
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ), // виджет изменения положения
                  Container(
                    color: Colors.white,
                    height: 220,
                    width: 224,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 25,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/icons/add.png'),
                              size: 80,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Добавить макет',
                            style: GoogleFonts.sintony(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // виджет добавить макет
                ],
              ), // первая горизонтальная пара виджетов
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    height: 220,
                    width: 224,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 25,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/icons/add.png'),
                              size: 80,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Добавить макет',
                            style: GoogleFonts.sintony(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // виджет добавить макет
                  Container(
                    color: CustomColors.bgPurple,
                    height: 220,
                    width: 224,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 30,
                            top: 30,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'изменить положение',
                              style: GoogleFonts.sintony(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage('assets/icons/globe.png'),
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ), // виджет изменения положения
                ],
              ), // вторая горизонтальная пара виджетов
              Row(
                children: [
                  Container(
                    color: CustomColors.bgPurple,
                    height: 220,
                    width: 224,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 30, top: 30),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'изменить положение',
                              style: GoogleFonts.sintony(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage('assets/icons/globe.png'),
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ), // виджет изменения положения
                  Container(
                    color: Colors.white,
                    height: 220,
                    width: 224,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 25,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/icons/add.png'),
                              size: 80,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Добавить макет',
                            style: GoogleFonts.sintony(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // виджет добавить макет
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
