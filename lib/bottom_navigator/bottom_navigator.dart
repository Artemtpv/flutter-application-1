/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_constants.dart';
import 'package:flutter_application_1/home/home.dart';
import 'package:flutter_application_1/makets/makets.dart';
import 'package:flutter_application_1/map/map.dart';
import 'package:flutter_application_1/profile/profile.dart';

class BottomNavigator extends StatefulWidget {
  final Widget? bottomNavigationBar;
  final void Function(int)? onDestinationSelected;
  const BottomNavigator(
      {super.key, this.bottomNavigationBar, this.onDestinationSelected});

  @override
  State<BottomNavigator> createState() => _BottomState();
}

class _BottomState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  final List<Widget> _page = [
    const MyMap(),
    const MyMakets(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
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
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              showUnselectedLabels: true,
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
            ), // нижнее навигационное поле,
          ),
        ),
      ),
    );
  }
}
*/