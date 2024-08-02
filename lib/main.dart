import 'package:flutter/material.dart';

import 'package:flutter_application_1/router.dart';

//import 'package:flutter_application_1/fieled/fieled.dart';
//import 'package:flutter_application_1/text/text.dart';

void main() {
  runApp(const MyApp());
}
// общие замечания
//почему у тебя существует пустая папка inkwell? - исправлено
//не должно быть названий по типу elbutton, изначально подумал про кнопку мексиканца - принято, исправлено
// если названия длинные то пиши их примерно так elevation_button.dart- принято
// что за файл bottomnavigationbar? - удаленно
// Первое.Крайне не читаемо, разделяй слова знаком "_", как я писал в примере выше - принято
//Второе. Если он у тебя в коменте и он тебе не нужен, то избавься от него. Не захламляй код - исправлено
// Почему в папке assets нет разделений межу Image и fonts?? Сейчас у тебя шрифтов нет, но в скором времени ты их добавишь,
// необходимо внутри папки создать еще 2 папки в которых будут лежать Image и отдельно fonts - исправлено

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return ElevatedButton(onPressed: () {}, child: const Text('tap'));
  }
}
