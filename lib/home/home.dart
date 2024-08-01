import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:flutter_application_1/fieled/fieled.dart';
import 'package:flutter_application_1/text/text.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 0),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.all(
                const TextStyle(fontSize: 14, color: Colors.white60),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: CustomColors.bgBlack,
              fixedColor: const Color.fromRGBO(105, 121, 248, 100),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/home.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Главная',
                  backgroundColor: CustomColors.bgBlack,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/map.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Карта',
                  backgroundColor: CustomColors.bgBlack,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/bookmark.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Макеты',
                  backgroundColor: CustomColors.bgBlack,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/user.png'),
                    color: CustomColors.bgWhite,
                  ),
                  label: 'Профиль',
                  backgroundColor: CustomColors.bgBlack,
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ), // нижнее навигационное поле,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () => GoRouter.of(context).push("/settings"),
              label: Text(
                'user',
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
              icon: const ImageIcon(AssetImage('assets/icons/user.png'),
                  color: Color.fromRGBO(21, 21, 34, 100)),
            ),
            Row(
              children: [
                IconButton(
                  icon: const ImageIcon(
                    color: Color.fromRGBO(21, 21, 34, 100),
                    AssetImage(
                      'assets/icons/notification.png',
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).push("/notifications"),
                ), // кнопка в виде иконки уведомления
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 90,
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1), color: Colors.white),
            child: const FiledHome(
              border: OutlineInputBorder(),
              decoration: InputDecoration(),
              text: 'Поиск участка',
              clild: Text(''),
              colors: Color.fromRGBO(142, 138, 138, 100),
              size: 15,
              weight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ), //поисковая сторка с иконкой
          Container(
            margin: const EdgeInsets.fromLTRB(
              10.0,
              10.0,
              10.0,
              0.0,
            ),
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/dom.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 130),
                  // почему такие размеры? Обязательно изучение Padding, Margin на 23.07.2024 - сделано
                  height: 500,
                  width: 150,
                ), // первое фото в горизонтальном ряду
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/place.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 130),
                  height: 500,
                  width: 150,
                  //зачастую мы пишем приложение для РФ не нужно оставлять комментарии на ин языке. - исправлено
                  // Если речь идет  международном проекте тогда коммиты и комментарии на ин языке в зависимости от страны производства - принято
                ), //второе фото в горизонтальном ряду
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      // Добавь изображение в формате png и svg. Для Svg нужно использовать отдельную библиотеку SvgPicture - pnd добавленно, svg - проблемы
                      image: AssetImage('assets/images/home.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 130),
                  // опять та же проблема с размерами
                  height: 500,
                  width: 150,
                ), // третье фото в горизонтальном ряду
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Earth.png'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 130),
                  height: 500,
                  width: 150,
                ), // четвертое фото в горизонтальном ряду формата png
              ],
            ),
          ), //  горизонтальный, прокручиваемый фото ряд

          Container(
            // использууй метод only только в том случае, когда задаешь параметры для 1 или максимум 2 сторон. - принято
            // Если же стороны однотипны, допустим лево и право используй метод symmetric - принято, исправлено
            // Если нужно задать разные значения 3 разным сторонам как в случае ниже, то fromLTRB - исправлено
            margin: const EdgeInsets.fromLTRB(
              25.0,
              50.0,
              25.0,
              0.0,
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                  blurStyle: BlurStyle.normal,
                ),
              ],
              image: const DecorationImage(
                opacity: 0.6,
                image: AssetImage('assets/images/doom.jpg'),
                fit: BoxFit.fill,
              ),
              color: const Color.fromARGB(31, 36, 35, 35).withOpacity(1.0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            height: 400,
            width: 150,
            child: const Stack(
              alignment: Alignment.bottomLeft,
              children: [
                TextWidgetComponents(
                  text:
                      'Новый дом - новыe возможности: началось строительство комплекса "Олимп"',
                  colors: Colors.white,
                  size: 32,
                  weight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ],
            ),
          ), // первое центральное фото дома

          Container(
            margin: const EdgeInsets.fromLTRB(
              25.0,
              1.0,
              25.0,
              0.0,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: Offset(0, 3),
                  blurStyle: BlurStyle.normal,
                ),
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Column(
              children: [
                // в будущем, если у тебя такой длинный текст, то выноси его в константу - требуется разъеснение
                TextWidgetComponents(
                  text:
                      'Если покупка квартиры не по карману, выпускники школ и их родители выбирают апартаменты. За 10 минут расскажем: что такое апартаменты и чем отличаются от квартиры, какой статус у апартаментов и почему апартаменты...',
                  colors: Colors.black,
                  size: 16,
                  weight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                )
              ],
            ),
          ), // первый текст под фото

          Container(
            margin: const EdgeInsets.fromLTRB(
              25.0,
              50.0,
              25.0,
              0.0,
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
              image: const DecorationImage(
                opacity: 0.6,
                image: AssetImage('assets/images/doom.jpg'),
                fit: BoxFit.fill,
              ),
              color: const Color.fromARGB(31, 56, 55, 55).withOpacity(1.0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            height: 400,
            width: 150,
            child: const Stack(
              alignment: Alignment.bottomLeft,
              children: [
                TextWidgetComponents(
                  text:
                      'Новый дом - новыe возможности: началось строительство комплекса "Олимп"',
                  colors: Colors.white,
                  size: 32,
                  weight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ],
            ),
          ), // второе центральное фото дома
          // Обязательно почитай про ListView.builder.
          // Это тебе понадобится даже при отсутствии API от бэка, чтобы сразу подготовить верстку фронта к будущему подключению API при этом не нагружая код
          Container(
            margin: const EdgeInsets.fromLTRB(
              25.0,
              0.0,
              25.0,
              10,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                ),
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Column(
              children: [
                TextWidgetComponents(
                  text:
                      'Если покупка квартиры не по карману, выпускники школ и их родители выбирают апартаменты. За 10 минут расскажем: что такое апартаменты и чем отличаются от квартиры, какой статус у апартаментов и почему апартаменты...',
                  colors: Colors.black,
                  size: 16,
                  weight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ],
            ),
          ), // второй текст под фото
        ],
      ),
    );
  }
}
