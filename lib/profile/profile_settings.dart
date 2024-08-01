import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:flutter_application_1/fieled/field_2.dart';
import 'package:flutter_application_1/fieled/field_3.dart';

import 'package:flutter_application_1/widgets/border_line.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 0,
          ),
          height: 160,
          child: TextButton.icon(
            label: Text(
              'Редактирование профиля',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
              size: 20,
            ),
          ), // кнопка(назад) редактирование профиля с иконкой ,
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // исправить
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 5),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 1,
                      color: Colors.black38,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(60),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(70),
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/images/Antonio.jpeg'),
                    radius: 60,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.black38,
                          child: IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              color: Colors.white70,
                              size: 40,
                              AssetImage('assets/icons/camera.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), // аватар пользователя
                ),
              ), // аватар пользователя с иконкой изменения фотографии посередине

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'изменение фотографии',
                    style: GoogleFonts.sintony(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ), // верхний текст
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(
                      left: 2,
                      top: 10,
                    ),
                    child: Stack(
                      children: [
                        Text(
                          'Добавьте фотографию загрузив ее с устройства или сделайте фото сейчас',
                          style: GoogleFonts.sintony(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: const Color.fromRGBO(139, 137, 137, 100),
                          ),
                        ), // нижний текст
                      ],
                    ),
                  ),
                ],
              ), // текс справа от аватара
            ],
          ),
          const BorderLine(), // разделительная линия
          Container(
            height: 100,
            margin: const EdgeInsets.fromLTRB(
              20,
              20,
              25,
              15,
            ),
            decoration: BoxDecoration(
              image: const DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.overlay),
                opacity: 0.9,
                image: AssetImage('assets/images/doom.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: const ImageIcon(
                    color: Colors.white70,
                    size: 40,
                    AssetImage('assets/icons/camera.png'),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ), // фото дома с кнопкой изменение фото в виде иконки фотоаппарата
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Имя:',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ), // раздел имя
              ],
            ),
          ),
          const SearchField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: 'Имя',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод имени пользователя
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Фамилия:',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ), // раздел фамилии
              ],
            ),
          ),
          const SearchField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: 'Фамилия',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод фамилии пользователя
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Дата рождения:',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ), // раздел даты рождения пользователя
              ],
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.fromLTRB(
              20,
              10,
              0,
              10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DropdownMenu(
                    label: Text(
                      'Дата рождения',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                    width: 400,
                    dropdownMenuEntries: const <DropdownMenuEntry<String>>[
                      DropdownMenuEntry(
                        value: String.fromEnvironment(''),
                        label: '22 мая 1998',
                      ),
                      DropdownMenuEntry(
                        value: String.fromEnvironment(''),
                        label: '11 сентября 2001',
                      ),
                      DropdownMenuEntry(
                        value: String.fromEnvironment(''),
                        label: '22 июля 1941',
                      ),
                      DropdownMenuEntry(
                        value: String.fromEnvironment(''),
                        label: '8 мая 1945 ',
                      ),
                      DropdownMenuEntry(
                        value: String.fromEnvironment(''),
                        label: '24 февраля 2022',
                      ),
                      DropdownMenuEntry(
                        value: String.fromEnvironment(''),
                        label: '7 января 00 от рождества христова',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), // выбор даты рождения пользователя
          Container(
            height: 30,
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'О себе:',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ), // раздел дополнительной информации о пользователе
          const InfoField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: 'Расскажи о себе',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            colors: Color.fromRGBO(142, 138, 138, 100),
          ), // дополнительная информация о пользователе
          Container(
            margin: const EdgeInsets.only(
              top: 0,
              bottom: 5,
            ),
            child: TextButton.icon(
              onPressed: () {},
              label: Text(
                'Изменить пароль',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Colors.black38,
                ),
              ),
              icon: const ImageIcon(
                color: Color.fromRGBO(153, 153, 153, 100),
                size: 24,
                AssetImage('assets/icons/lock.png'),
              ),
            ),
          ), // кнопка изменеия пароля
          Container(
            height: 70,
            width: 250,
            margin: const EdgeInsets.fromLTRB(
              20,
              0,
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
                'Сохранить',
                style: GoogleFonts.sintony(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ), // кнопка сохранения отредактированных данных о пользователе
          Container(
            margin: const EdgeInsets.only(
              top: 0,
              bottom: 0,
            ),
            child: TextButton.icon(
              onPressed: () {},
              label: Text(
                'Удалить аккаунт',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Colors.black38,
                ),
              ),
              icon: const ImageIcon(
                color: Color.fromRGBO(153, 153, 153, 100),
                size: 24,
                AssetImage('assets/icons/delete.png'),
              ),
            ),
          ), // кнопка удаления аккаунта
          Container(
            width: 25,
            height: 1,
            color: Colors.black45,
            margin: const EdgeInsets.fromLTRB(
              100,
              0,
              100,
              20,
            ),
          ),
        ],
      ),
    );
  }
}
