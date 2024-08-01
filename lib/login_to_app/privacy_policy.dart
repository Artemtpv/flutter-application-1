import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 114, 178, 231),
        toolbarHeight: MediaQuery.of(context).size.height / 9,
        leading: Container(),
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.elliptical(180, 40)),
        ),
        title: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.fromLTRB(
            0,
            0,
            15,
            40,
          ),

          child: TextButton.icon(
            label: Text(
              'Политика конфиденцальности',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 16,
            ),
          ), // кнопка(назад) регистрация пользователя с иконкой
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Column(
              children: [
                Text(
                  '2.8. Администрация Сайта не проверяет достоверность персональных данных, предоставляемых Пользователем Сайта на Сайте. Администрация Сайта исходитиз того, что Пользователь Сайта предоставляет достоверные и достаточные персональные данныеи поддерживает эту информацию в актуальном состоянии. Всю ответственностьза последствия предоставления недостоверных или недействительных персональных данных несет лично Пользователь Сайта.2.9. Пользователь Сайта подтверждает, что, предоставляя свои персональные данные и давая согласие на их обработку, он действует добровольно, своей волей и в своем интересе, а также подтверждает свою дееспособность.2.10. Предоставляя свои персональные данные, Пользователь Сайта соглашается с тем, что предоставленные им персональные данные будут обрабатываться АО «ГНИВЦ» (адрес: 125373, г. Москва, Походный проезд, домовладение 3, строение 1, ИНН 7733284010, ОГРН 1167746447461) как с использованием средств автоматизации, так и без использования таких средств.2.11. Персональные данные, разрешённые к обработке в рамках Политики конфиденциальности, не являются специальными или биометрическими, предоставляются Пользователем Сайта путём заполнения специальных форм на Сайте бессрочно (вплоть до отзыва Пользователем Сайта своего согласия на обработку персональных данных). В зависимости от заполняемой Пользователем веб-формы, данные включают в себя следующую информацию:',
                  style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: const Color.fromRGBO(142, 138, 138, 100)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
