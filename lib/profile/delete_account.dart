import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:flutter_application_1/fieled/password_field.dart';

import 'package:flutter_application_1/profile/checkbox_mark.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 160,
          child: TextButton.icon(
            label: Text(
              'Удаление аккаунта',
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
          ), // кнопка(назад) удаление аккаунта с иконкой ,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(
              30,
              99,
              30,
              10,
            ),
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) => const RadialGradient(
                center: Alignment.topCenter,
                stops: [.5, 1],
                colors: [
                  Color.fromRGBO(205, 210, 253, 100),
                  Color.fromRGBO(105, 121, 248, 100),
                ],
              ).createShader(bounds),
              child: const ImageIcon(
                size: 120,
                AssetImage('assets/icons/user-minus.png'),
              ),
            ),
          ),
          Container(
            width: 10,
            margin: const EdgeInsets.fromLTRB(70, 10, 50, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'При удалении аккаунта все ваши данные будут потеряны навсегда. Удаленные данные восстанвоить невозможно',
                  style: GoogleFonts.sintony(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: const Color.fromRGBO(92, 92, 92, 100),
                  ),
                ), //  текст предупреждения
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
              left: 20,
              bottom: 10,
            ),
            child: Text(
              'Пароль:',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
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
          ), // ввод пароля
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CheckboxMark(),
                Text(
                  'Я подтверждаю удаление аккаунта',
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
          ), // метка подтверждения удаления аккаунта
          Container(
            margin: const EdgeInsets.fromLTRB(
              25,
              198,
              25,
              0,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(325, 50),
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
                'Удалить',
                style: GoogleFonts.sintony(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
