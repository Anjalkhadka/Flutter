import 'package:flutter/material.dart';

import '../model/name_change_model.dart';
import '../view/name_change_person.dart';

class MyNameChange extends StatefulWidget {
  const MyNameChange({super.key});

  @override
  State<MyNameChange> createState() => _MyNameChangeState();
}

class _MyNameChangeState extends State<MyNameChange> {
  late anjal display;

  int index = 0;
  String name = '';
  // ignore: non_constant_identifier_names
  void MyNameChange() {
    display = anjal();
    setState(() {
      name = display.displayName(index++);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            MyNameChange();
          },
          child: Text('Click Me $name'),
        ),
      ),
    ));
  }
}
