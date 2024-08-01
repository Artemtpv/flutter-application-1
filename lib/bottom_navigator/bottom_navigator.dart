/*import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  final Widget? bottomNavigationBar;
  final void Function(int)? onDestinationSelected;
  const BottomNavigator(
      {super.key, this.bottomNavigationBar, this.onDestinationSelected});

  @override
  State<BottomNavigator> createState() => _BottomState();
}

class _BottomState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        onDestinationSelected: (int index) {
          setState(
            () {},
          );
        },
        indicatorColor: Colors.black12,

        // вкладка избранное тебе не понадобится убери ее - исправлено
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ), // раздел главная страница
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            label: 'Карта',
          ), // раздел карта
          NavigationDestination(
            icon: Icon(Icons.bookmark_outline_outlined),
            label: 'Макеты',
          ), // раздел макеты
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: 'Профиль',
          ), // раздел профиль
        ],
      ), // нижнее навигационное поле
    );
  }
}
*/