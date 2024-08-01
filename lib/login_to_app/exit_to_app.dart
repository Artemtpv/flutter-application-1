import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:flutter_application_1/fieled/field_2.dart';
import 'package:flutter_application_1/fieled/password_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ExitToApp extends StatefulWidget {
  const ExitToApp({super.key});

  @override
  State<ExitToApp> createState() => _ExitToAppState();
}

class _ExitToAppState extends State<ExitToApp> {
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
              'Авторизация',
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
              size: 18,
            ),
          ), // кнопка(назад) авторизация пользователя с иконкой
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Text(
                  'Вход',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 28,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ), // верхний текст
              ),
              Container(
                width: 350,
                margin: const EdgeInsets.only(
                  left: 15,
                  top: 20,
                ),
                child: Stack(
                  children: [
                    Text(
                      'Введте свой почтовый адрес и пароль или воспользуйтесь восстановлением пароля в случае, если вы забыли его',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: const Color.fromRGBO(142, 138, 138, 100),
                      ),
                    ), // нижний текст
                  ],
                ),
              ),
            ],
          ), // титульный текст
          Container(
            margin: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ваша почта:',
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
            text: 'введите адрес вашей эл.почты',
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
            text: 'введите пароль',
            clild: Text(''),
            size: 14,
            weight: FontWeight.w400,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод пароля пользователя
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
                'войти',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ), // кнопка входа
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'или',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
              )
            ],
          ), // текст под первой кнопкой
          Container(
            height: 37,
            margin: const EdgeInsets.fromLTRB(
              70,
              20,
              70,
              10,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color.fromARGB(66, 0, 0, 0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  side: BorderSide(
                    color: CustomColors.bgPurple,
                    width: 2,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'продолжить редактирование',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
