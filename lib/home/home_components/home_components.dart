import 'package:flutter/material.dart';
import 'package:flutter_application_1/fieled/fieled.dart';

class FieldContain extends StatefulWidget {
  const FieldContain({super.key});

  @override
  State<FieldContain> createState() => _FieldContainState();
}

class _FieldContainState extends State<FieldContain> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    ); //поисковая сторка с иконкой
  }
}
