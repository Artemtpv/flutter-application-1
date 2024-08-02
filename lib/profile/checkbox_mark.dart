// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CheckboxMark extends StatefulWidget {
  const CheckboxMark({super.key});

  @override
  State<CheckboxMark> createState() => _CheckboxMarkState();
}

class _CheckboxMarkState extends State<CheckboxMark> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    Color(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Checkbox(
      activeColor: Colors.blue,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
