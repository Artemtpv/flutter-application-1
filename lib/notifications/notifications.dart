import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotifications extends StatefulWidget {
  const MyNotifications({super.key});

  @override
  State<MyNotifications> createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          height: 160,
          child: TextButton.icon(
            label: Text(
              'Уведомления',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
            ),
            onPressed: () => GoRouter.of(context).push('/test'),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(142, 138, 138, 100),
              size: 18,
            ),
          ), // кнопка(назад)уведомления с икокой ,
        ),
      ),
      body: ListView(
        children: [
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
              horizontal: 12,
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
                      const ImageIcon(
                        color: Color.fromRGBO(190, 82, 242, 100),
                        size: 24,
                        AssetImage('assets/icons/notification.png'),
                      ),
                      // иконка уведомления фиалетого цвета первой кнопки

                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Уведомление 1',
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                          ),
                        ), // текст второй кнопки
                      ), // текст первой кнопки
                    ],
                  ), // иконка уведомления с текстом первой кнопки
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageIcon(
                        color: Color.fromRGBO(153, 153, 153, 100),
                        size: 24,
                        AssetImage('assets/icons/cancel.png'),
                      ), // иконка закрытия первой кнопки
                    ],
                  ),
                ],
              ),
            ),
          ), // первая кнопка с иконой уведомления слева, текстом посередине и иконкой закрытия справа
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
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
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
                      const ImageIcon(
                        color: Color.fromRGBO(153, 153, 153, 100),
                        size: 24,
                        AssetImage('assets/icons/notification.png'),
                      ), // иконка уведомления второй кнопки
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Уведомление 2',
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                          ),
                        ), // текст второй кнопки
                      ),
                    ],
                  ), // иконка уведомления с текстом второй кнопки
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageIcon(
                        color: Color.fromRGBO(153, 153, 153, 100),
                        size: 24,
                        AssetImage('assets/icons/cancel.png'),
                      ), // иконка закрытия второй кнопки
                    ],
                  ),
                ],
              ),
            ),
          ), // вторая кнопка с иконкой уведомления слева, текстом посередине и иконкой закрытия справа
        ],
      ),
    );
  }
}
