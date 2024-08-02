import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Карта',
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              icon: const Icon(
                size: 18,
                Icons.arrow_back_ios,
                color: Colors.black38,
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const ImageIcon(
                    size: 28,
                    color: Color.fromRGBO(153, 153, 153, 100),
                    AssetImage('assets/icons/filter.png'),
                  ),
                  onPressed: () {},
                ), // кнопка в виде иконки уведомления
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 900,
            width: 448,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/mapscreen.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
