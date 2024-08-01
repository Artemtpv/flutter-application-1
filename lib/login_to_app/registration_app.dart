import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';

import 'package:flutter_application_1/fieled/field_2.dart';
import 'package:flutter_application_1/fieled/password_field.dart';
import 'package:flutter_application_1/profile/checkbox_mark.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationApp extends StatefulWidget {
  const RegistrationApp({super.key});

  @override
  State<RegistrationApp> createState() => _RegistrationAppState();
}

class _RegistrationAppState extends State<RegistrationApp> {
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
              'Регистрация',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
              size: 16,
            ),
          ), // кнопка(назад) регистрация пользователя с иконкой
        ),
      ),
      body: ListView(
        children: [
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
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Почта:',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ), // раздел почты
              ],
            ),
          ),
          const SearchField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: 'Почта',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод почты пользователя
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Пароль:',
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
          ),
          const PasswordField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: 'придумайте пароль',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод пароля пользователя
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Повторите пароль:',
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
          ),
          const PasswordField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: 'проверка пароля',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // повторный ввод пароля пользователя

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckboxMark(), // метка согласия на обработку персональных данных
              Container(
                width: 370,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Я согласен на обработку своих персональных данных и принимаю условия Политики конфиденциальности и Пользовательского соглашения',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: const Color.fromRGBO(142, 138, 138, 100),
                  ),
                ),
              ),
            ],
          ), // мекта с текстом информирующем пользователя о принятия соглаия на обработку персональных данных
          Container(
            height: 60,
            width: 400,
            margin: const EdgeInsets.fromLTRB(
              20,
              60,
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
                'зарегистрироваться',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ), // кнопка регистрации
        ],
      ),
    );
  }
}
