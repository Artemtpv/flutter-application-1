import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:flutter_application_1/fieled/field_2.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
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
              'Востановление пароля',
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
          ), // кнопка(назад) восстановление пароля с иконкой
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      'Понадобится ваша почта,',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ), // верхний текст
                    Text(
                      'которую вы указали',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'при регистрации',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  'На вашу почту будет отправлено письмо',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: const Color.fromRGBO(142, 138, 138, 100),
                  ),
                ),
                Text(
                  'для смены пароля',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: const Color.fromRGBO(142, 138, 138, 100),
                  ),
                ),
              ],
            ),
          ),
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
            weight: FontWeight.w500,
            colors: Color.fromRGBO(142, 138, 138, 100),
            fontStyle: FontStyle.normal,
          ), // ввод почты пользователя
          Container(
            height: 60,
            width: 400,
            margin: const EdgeInsets.fromLTRB(
              20,
              20,
              20,
              0,
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
                'отправить письмо',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ), // кнопка отправления письма
        ],
      ),
    );
  }
}
