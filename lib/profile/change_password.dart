import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';

import 'package:flutter_application_1/fieled/password_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
              'Изменение пароля',
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
              color: Color.fromRGBO(21, 21, 34, 100),
              size: 18,
            ),
          ), // кнопка(назад) изменение пароля с иконкой ,
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
                  'Предыдущий пароль:',
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
          const PasswordField(
            border: OutlineInputBorder(),
            decoration: InputDecoration(),
            text: '',
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
                  'Новый пароль:',
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
            text: '',
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
                  'Повторите новый пароль:',
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
            text: '',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод имени пользователя
          Container(
            height: 70,
            width: 250,
            margin: const EdgeInsets.fromLTRB(
              25,
              440,
              25,
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
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ), // кнопка сохранения отредактированных данных о пользователе
        ],
      ),
    );
  }
}
