import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SucsessLogin extends StatefulWidget {
  const SucsessLogin({super.key});

  @override
  State<SucsessLogin> createState() => _SucsessLoginState();
}

class _SucsessLoginState extends State<SucsessLogin> {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  20,
                  150,
                  20,
                  40,
                ),
                child: const ImageIcon(
                  AssetImage('assets/icons/check.png'),
                  size: 180,
                  color: Color.fromRGBO(0, 196, 140, 110),
                ),
              ), // иконка успешной регистрации
              Container(
                margin: const EdgeInsets.fromLTRB(
                  40,
                  20,
                  40,
                  0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Письмо для',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'подтверждения ',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'отправлено на вашу',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'почту',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ), // иконка регистрации и текст под ней
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    Text(
                      'Подтвердите регистрацию в письме,',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: const Color.fromRGBO(142, 138, 138, 100),
                      ),
                    ),
                    Text(
                      'которое было отправлено на вашу почту, а после',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: const Color.fromRGBO(142, 138, 138, 100),
                      ),
                    ),
                    Text(
                      'проверьте верификацию нажав на кнопку ниже',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: const Color.fromRGBO(142, 138, 138, 100),
                      ),
                    ),
                  ],
                ), // разъеснительный текст
              ),
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
                    backgroundColor: const Color.fromRGBO(0, 196, 140, 110),
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
                    'проверить верификацию',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ), // кнопка проверки верификации
            ],
          ),
        ],
      ),
    );
  }
}
